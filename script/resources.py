import os
import PIL.Image
import tryashtools as tat

class SpriteResources:
  def __init__(self, sprite, props, texture_path, model_path, custom_model_data):
    self.sprite = sprite
    self.properties = props
    self.texture_path = texture_path
    self.texture_resource = path_to_resource(texture_path)
    self.model_path = model_path
    self.model_resource = path_to_resource(model_path)
    self.custom_model_data = custom_model_data

def resource_to_path(rc, folder, extension):
  try:
    colon = rc.index(':')
    return f"{rc[0:colon]}/{folder}/{rc[colon+1:]}.{extension}"
  except ValueError:
    return f"minecraft/{folder}/{rc}.{extension}"

def path_to_resource(path):
  items = path.replace('\\','/').split('/')
  items[-1] = os.path.splitext(items[-1])[0]
  return f'{items[1]}:{"/".join(items[3:])}'

def sprite_name(spr, props):
  return spr.display(props, '.', '-').replace('.','/', 1)

def save_image(spr, images, path):
  tat.setup_path(path)
  img = PIL.Image.new('RGBA', (spr.width, spr.height * len(images)), '#00000000')
  for i,f in enumerate(images):
    PIL.Image.Image.paste(img, f, (0, i*spr.height), f)
  img2 = img.copy()
  img2.putalpha(253)
  img.paste(img2, img)
  img.save(path)
  if len(images) > 1:
    tat.write_json({"animation":{"frametime":4,"width":spr.width,"height":spr.height}}, path + '.mcmeta')

def save_model(spr, texture_resource, path, y):
  t1 = round(-16*spr.scale*spr.shift[1]/24,2)
  t2 = round(-16*spr.scale*spr.shift[0]/24,2)
  model = {"parent":"baba:sprite","textures":{"up":texture_resource}}
  if (t1, y, t2) != (0, 0, 0) or spr.scale != 1:
    model['display'] = {"fixed":{"rotation":[0,90,0],"scale":[spr.scale,0.001,spr.scale],"translation":[t1, y, t2]}}
  tat.write_json(model, path)

def save_editor_model(texture_resource, path):
  model = {"parent":"baba:editor_block","textures":{"all":texture_resource}}
  tat.write_json(model, path)

def create_sprite_resources(source, resource_pack, namespace):
  sprite_info = {}
  overrides = []
  cached_images = {}
  cached_models = {}
  texture_folder = os.path.join('assets', namespace, 'textures/sprites')
  model_folder = os.path.join('assets', namespace, 'models/sprites')
  tat.delete_folder(os.path.join(resource_pack, texture_folder))
  tat.delete_folder(os.path.join(resource_pack, model_folder))
  sprite_id = 0
  for obj in list(source.objects.values()) + list(source.overlays.values()) + list(source.alt_images.values()):
    filtered = list(obj.filter_sprites(lambda x: 'sprite' in x.attributes).items())
    for spr,props in filtered:
      display = sprite_name(spr, props)
      if spr.image in cached_images:
        texture_path = cached_images[spr.image]
      else:
        texture_path = os.path.join(texture_folder, display + '.png')
        save_image(spr, spr.image.frames, os.path.join(resource_pack, texture_path))
        cached_images[spr.image] = texture_path
      model_key = f'{spr.image}.{spr.scale}.{spr.shift}'
      if model_key in cached_models:
        (model_path, custom_model_data) = cached_models[model_key]
      else:
        sprite_id += 1
        custom_model_data = sprite_id
        model_path = os.path.join(model_folder, display + '.json')
        y = 0.01 if obj.is_overlay else 0
        save_model(spr, path_to_resource(texture_path), os.path.join(resource_pack, model_path), y)
        cached_models[model_key] = (model_path, custom_model_data)
        overrides.append({'predicate':{'custom_model_data':custom_model_data},'model':path_to_resource(model_path)})
      sprite_info[spr] = SpriteResources(spr, props, texture_path, model_path, custom_model_data)
  tat.write_json({"parent":"item/generated","textures":{"layer0":"item/potion_overlay","layer1":"item/potion"},"display":{"fixed":{"scale":[0,0,0]}},"overrides":overrides}, os.path.join(resource_pack, 'assets/minecraft/models/item/potion.json'))
  return sprite_info

def colorize_frames(images, color):
  for f in images:
    rc, gc, bc, ac = f.split()
    r, g, b = color
    rc = rc.point(lambda x,r=r: x * r/255)
    gc = gc.point(lambda x,g=g: x * g/255)
    bc = bc.point(lambda x,b=b: x * b/255)
    yield PIL.Image.merge('RGBA', (rc, gc, bc, ac))
