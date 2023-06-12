import configparser
import lupa
import sys
import os
import zlib
import tryashtools as tat
import sprite
import ops

def main():
   baba_folder = sys.argv[1] if len(sys.argv) >= 2 else os.getcwd()
   os.chdir('..')
   sprite_data = tat.read_yaml('sprites.yaml')
   source = sprite.SpriteCollection(sprite_data)
   lua = lupa.LuaRuntime()
   with open(os.path.join(baba_folder, 'Data/values.lua'), 'r', encoding='utf-8') as file:
      lua.execute(file.read())
   vars = lua.globals()
   table = make_object_table(vars)
   for level_file in tat.get_files(os.path.join(baba_folder, 'Data/Worlds/baba')):
      if tat.extension(level_file) != '.ld':
         continue
      with open(level_file, 'r', encoding='utf-8') as ld, open(os.path.splitext(level_file)[0] + '.l', 'rb') as l:
         config = configparser.ConfigParser()
         config.read_file(ld)
         level = LevelGrid(config, l, table)
         print(f'{tat.base_name(level_file)} - {level.name}')
         storage = level.make_storage(source)
         tat.write_text(f'data modify storage baba:main level set value {storage}\n', f'datapack/data/baba/functions/levels/{tat.base_name(level_file)}.mcfunction')

def make_object_table(vars):
   table1 = {}
   table2 = {}
   table3 = {}
   for obj_name in vars.tileslist:
      obj = vars.tileslist[obj_name]
      id = (int(obj.tile[2]) << 8) | int(obj.tile[1])
      result = {'name':obj.name, 'index':id, 'obj':obj_name}
      table1[id] = result
      table2[obj_name] = result
      table3[obj.name] = result
   return {'by_index':table1,'by_obj':table2,'by_name':table3}
   
class LevelGrid:
   def __init__(self, level_config, level_stream, object_table):
      self.cells = []
      self.config = level_config
      general = level_config['general']
      self.name = general['name']
      edits = {}
      for target,set in level_config['tiles'].items():
         if target == 'changed':
            continue
         obj,prop = target.split('_')
         if obj not in edits:
            edits[obj] = {}
         edits[obj][prop] = set
      level_stream.seek(28, 1)
      layers = int.from_bytes(level_stream.read(2), byteorder="little")
      for _ in range(layers):
         self.width = int.from_bytes(level_stream.read(4), byteorder="little")
         self.height = int.from_bytes(level_stream.read(4), byteorder="little")
         if len(self.cells) == 0:
            self.cells = [[[] for _ in range(self.width)] for _ in range(self.height)]
         level_stream.seek(32, 1)
         data_blocks = int.from_bytes(level_stream.read(1), byteorder="little")
         level_stream.seek(4, 1)
         compressed_size = int.from_bytes(level_stream.read(4), byteorder="little")
         map_buffer = zlib.decompress(level_stream.read(compressed_size))
         items = []
         for i in range(len(map_buffer) // 2):
            x,y = divmod(i, self.width)
            cell = self.cells[x][y]
            id = int.from_bytes(map_buffer[i * 2 : i * 2 + 2], byteorder="little")
            object = object_table['by_index'].get(id)
            if object is not None:
               result = {'name':object['name']}
               if object['obj'] in edits:
                  result['edits'] = edits[object['obj']]
               cell.append(result)
            else:
               result = None
            items.append(result)
         if data_blocks == 2:
            level_stream.seek(9, 1)
            compressed_size = int.from_bytes(level_stream.read(4), byteorder="little")
            dirs_buffer = zlib.decompress(level_stream.read(compressed_size))
            for i in range(len(dirs_buffer) - 1):
               if items[i] is not None:
                  items[i]['direction'] = dirs_buffer[i]
   
   def make_storage(self, source):
      fixed_name = self.name.replace("'","\\'")
      nbt = []
      metadata = [f'name:\'"{fixed_name}"\'']
      palette = self.config['general']['palette'][:-4]
      for i,p in enumerate(source.palettes):
         if p == palette and palette != 0:
            metadata.append(f'palette:{i}')
      nbt.append('metadata:{' + ','.join(metadata) + '}')
      tiles_text = []
      text_prop = source.properties['text']
      for row in reversed(self.cells[1:-1]):
         row_text = []
         for tile in row[1:-1]:
            tile_text = []
            for instance in tile:
               name = instance['name']
               text = None
               extra_data = None
               if name.startswith('text_'):
                  text = name[len('text_'):]
                  name = 'text'
                  extra_data = f'text:"{text}"'
               obj = source.objects[name]
               condition = lambda x: True
               if text is not None:
                  condition = condition and (lambda x: text_prop in x.properties and x.properties[text_prop] == text)
               edits = instance.get('edits', {})
               if (img := edits.get('image')) is not None:
                  pass
               props = None
               for spr in obj.sprites:
                  if condition(spr):
                     props = spr.properties.copy()
                     break
               if props is None:
                  print(f'\tFailed to create: {instance}')
                  continue
               if (color := edits.get('colour')) is not None:
                  color = edits.get('activecolour', color)
                  cx,cy = color.split(',')
                  palette = list(next(iter(source.palettes.values())).keys())
                  props[source.properties['color']] = palette[int(cy) * 7 + int(cx)]
               if (direction := instance.get('direction')) is not None:
                  props[source.properties['facing']] = {0:4,1:1,2:3,3:2}[direction]
               tile_text.append('{' + ops.create_storage(props, extra_data) + '}')
            row_text.append('[' + ','.join(tile_text) + ']')
         tiles_text.append('[' + ','.join(row_text) + ']')
      nbt.append(',tiles:[' + ','.join(tiles_text) + ']')
      return '{' + ''.join(nbt) + '}'


if __name__ == '__main__':
   main()
