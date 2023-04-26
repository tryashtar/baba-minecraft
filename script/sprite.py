import tryashtools as tat
import PIL.Image
import PIL.ImageColor
import itertools
import numpy as np
import os
import ops

# keeps track of all the object definitions
class SpriteCollection:
  def __init__(self, data):
    self.data = data
    self.objects = {}
    self.overlays = {}
    self.properties = {
      'sprite': Metadata(name='sprite', kind='score', attributes=['editor','sprite','primary','spawn'], converter='hash'),
      'text': Metadata(name='text', kind='score', attributes=['editor','sprite','primary','spawn'], converter='hash'),
      'color': Metadata(name='color', kind='score', attributes=['spawn'], converter='hex'),
      'z_layer': Metadata(name='z_layer', kind='score', default=1, attributes=['all','spawn'])
    }
    self.palettes = data['palettes']
    for name,prop in data['properties'].items():
      self.properties[name] = Metadata(name=name, kind=prop['type'], values=prop.get('values'), default=prop.get('default'), attributes=prop['attributes'])
    self.load_sprites()
    
  def get_or_create_obj(self, name, is_overlay):
    source = self.overlays if is_overlay else self.objects
    if name in source:
      return source[name]
    obj = BabaObject(name, is_overlay)
    source[name] = obj
    return obj

  def permute(self, properties):
    return list(dict(zip(properties, x)) for x in itertools.product(*properties.values()))

  def load_sprites(self):
    size = None
    scale = 1
    frame_num = 1
    for spritesheet in self.data['sprites']:
      coords = None
      size = spritesheet.get('size', size)
      scale = spritesheet.get('scale', scale)
      frame_num = spritesheet.get('frames', frame_num)
      width, height = size
      sheetname = spritesheet['sheet']
      # load the spritesheet PNG and filter out the background color
      image = PIL.Image.open(os.path.join('sprites', sheetname+'.png')).convert('RGBA')
      array = np.array(image, dtype=np.ubyte)
      mask = (array[:,:,:3] == (84, 165, 75)).all(axis=2)
      alpha = np.where(mask, 0, 255)
      array[:,:,-1] = alpha
      image = PIL.Image.fromarray(np.ubyte(array))
      for entry in spritesheet['entries']:
        objlist = entry.get('objects', [])
        overlist = entry.get('overlays', [])
        for source in (objlist, overlist):
          for obj in source:
            # if coords are unspecified, move to the next row
            if coords is not None:
              coords[1] += (height+1) * framecount
            if obj is None:
              continue
            coords = obj.get('coords', coords)
            framedir = obj.get('frames', 'down')
            framecount = 1 if framedir == 'none' else frame_num
            shared  = obj.get('shared', [obj])
            # expand sprite definitions from shorthands to a complete list of all sprites
            sprites = []
            for spr in entry['sprites']:
              if type(spr) is dict and 'permute' in spr:
                sprites.extend(self.permute(spr['permute']))
              else:
                sprites.append(spr)
            for obj in shared:
              # create the object, or find an existing one if the object's sprites appear on multiple rows (e.g. text)
              baba = self.get_or_create_obj(obj['name'], source == overlist)
              if 'overlays' in obj:
                baba.overlays.extend(obj['overlays'])
              if 'modifications' in obj:
                for k,v in obj['modifications'].items():
                  baba.property_mods[k] = v

            for i,sp in enumerate(sprites):
              for objid, obj in enumerate(shared):
                spr = sp if type(sp) is str else sp.copy()
                if type(sp) is list:
                  spr = sp[objid].copy()
                baba = self.get_or_create_obj(obj['name'], source == overlist)
                spr_coords = coords
                if spr == 'text':
                  adding = self.get_or_create_obj('text', False)
                  color = obj.get('text color', obj.get('color'))
                  spr = {'text': obj['name'], 'part': 'noun'}
                  spr_coords = obj.get('text coords', spr_coords)
                else:
                  adding = baba
                  color = obj.get('object color', obj.get('color'))
                # include properties specific to this object, or this sprite
                spr['color'] = color
                if sp != 'text' and 'properties' in obj:
                  for k,v in obj['properties'].items():
                    spr[k] = v
                if sp != 'text' and 'properties' in entry:
                    for k,v in entry['properties'].items():
                      spr[k] = v
                # make keys the actual metadata objects instead of their names
                props = {self.properties['sprite']:adding.name}
                if adding.name == 'text':
                  props[self.properties['z_layer']] = 20
                  props[self.properties['not_all']] = True
                  props[self.properties['reparse']] = True
                for k,v in spr.items():
                  if k in baba.property_mods and k not in self.properties:
                    self.properties[k] = Metadata(k, 'mod', None, None, ['sprite'])
                  props[self.properties[k]] = v
                # finalize the sprite and add each anim frame to its respective grid
                imgframes = list(self.get_frames(i, image, framecount, coords, size, framedir))
                sprite = BabaSprite(imgframes, props, width, height, obj.get('shift', [0,0]), scale)
                adding.sprites.append(sprite)

  def get_frames(self, i, image, framecount, coords, size, framedir):
    x, y = coords
    w, h = size
    for n in range(framecount):
      if framedir == 'down':
        yield image.crop((x+((w+1)*i),y+((h+1)*n),x+((w+1)*i)+w,y+((h+1)*n)+h))
      elif framedir == 'right':
        yield image.crop((x+((w+1)*n),y+((h+1)*i),x+((w+1)*n)+w,y+((h+1)*i)+h))
      elif framedir == 'none':
        yield image.crop((x,y+((h+1)*i),x+w,y+((h+1)*i)+h))


class BabaObject:
  def __init__(self, name, is_overlay):
    self.name = name
    self.id = ops.id_hash(name)
    self.sprites = []
    self.overlays = []
    self.property_mods = {}
    self.is_overlay = is_overlay

  # get sprites that are unique when filtering by an attribute
  # for example, baba has many sprites, but only 4 are unique with respect to the facing property
  def filter_sprites(self, check):
    sprites = {}
    for s in self.sprites:
      props = ops.filter_properties(s.properties, check)
      if not any(map(lambda x: x == props, sprites.values())):
        sprites[s] = props
    return sprites


class BabaSprite:
  def __init__(self, image_frames, properties, width, height, shift, scale):
    self.image_frames = image_frames
    self.properties = properties
    self.width = width
    self.height = height
    self.shift = shift
    self.scale = scale

  def display_val(self, val):
    if type(val) is list:
      return f'{val[0]}-{val[1]}'
    return str(val).lower()

  def display(self, properties, sep1, sep2):
    result = ''
    for k,v in properties.items():
      if 'primary' in k.attributes:
        result += self.display_val(v) + sep1
    for k,v in properties.items():
      if 'primary' not in k.attributes:
        result += k.name + sep2 + self.display_val(v) + sep1
    result = result[:-1]
    return result


class Metadata:
  def __init__(self, name, kind, values=None, default=None, attributes=None, converter=None):
    self.name = name
    self.kind = kind
    self.values = values
    self.default = default
    self.attributes = [] if attributes is None else attributes
    self.converter = converter

  def convert(self, value):
    if self.kind == 'tag':
      if isinstance(value, str):
        return self.name + '.' + value
      return self.name
    if self.kind == 'score':
      if self.converter == 'hash' and isinstance(value, str):
        return str(ops.id_hash(value))
      if self.converter == 'hex':
        return str(int(value[1:], 16))
      if isinstance(value, str):
        return str(self.values.index(value) + 1)
      if isinstance(value, list):
        return f'{value[0]}..{value[1]}'
    return str(value)
