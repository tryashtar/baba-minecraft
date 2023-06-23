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
   test_all = [
      'data modify storage baba:main level_list set value []',
      'data modify storage baba:main moves_list set value []',
   ]
   for level_file in tat.get_files(os.path.join(baba_folder, 'Data/Worlds/baba')):
      if tat.extension(level_file) != '.ld':
         continue
      with open(level_file, 'r', encoding='utf-8') as ld, open(os.path.splitext(level_file)[0] + '.l', 'rb') as l:
         level_name = tat.base_name(level_file)
         config = configparser.ConfigParser()
         config.read_file(ld)
         level = LevelGrid(config, l, table)
         print(f'{level_name} - {level.name}')
         storage = level.make_storage(source)
         tat.write_text(f'data modify storage baba:main level set value {storage}\n', f'datapack/data/baba/functions/levels/{level_name}.mcfunction')
         solution_folder = os.path.join('script/tests/BABA IS YOU/solutions-multiline')
         if os.path.isdir(solution_folder):
            moves = []
            found = False
            for solution_file in tat.get_files(solution_folder):
               if f', {level.name}, ' in tat.base_name(solution_file).lower():
                  for move in tat.read_lines(solution_file):
                     moves.append({'U':1,'D':2,'L':3,'R':4,'W':0}[move])
                  found = True
                  break
            if found:
               move_storage = '[' + ','.join(map(str, moves)) + ']'
               test_all.extend([
                  f'function baba:levels/{level_name}',
                  'data modify storage baba:main level_list append from storage baba:main level',
                  f'data modify storage baba:main moves_list append value {move_storage}',
               ])
               test_level = [
                  f'function baba:levels/{level_name}',
                  'data modify storage baba:main level_list set value []',
                  'data modify storage baba:main moves_list set value []',
                  f'data modify storage baba:main moves set value {move_storage}',
                  'execute positioned 0 1 0 run function baba:editor/load',
                  'execute if entity @a[tag=scrub,limit=1] run data modify storage baba:main old_moves set value []',
                  'execute unless entity @a[tag=scrub,limit=1] run schedule function baba:levels/testing/automate 1t',
               ]
               tat.write_lines(test_level, f'datapack/data/baba/functions/levels/test/{level_name}.mcfunction')
   test_all.extend([
      'data modify storage baba:main level set from storage baba:main level_list[0]',
      'data modify storage baba:main moves set from storage baba:main moves_list[0]',
      'data remove storage baba:main level_list[0]',
      'data remove storage baba:main moves_list[0]',
      'execute positioned 0 1 0 run function baba:editor/load',
      'schedule function baba:levels/testing/automate 1t'
   ])
   tat.write_lines(test_all, f'datapack/data/baba/functions/levels/testing/all.mcfunction')

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
      self.object_table = object_table
      general = level_config['general']
      self.name = general['name']
      self.edits = {}
      for target,set in level_config['tiles'].items():
         if target == 'changed':
            continue
         obj,prop = target.split('_')
         if obj not in self.edits:
            self.edits[obj] = {}
         self.edits[obj][prop] = set
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
            object = self.object_table['by_index'].get(id)
            if object is not None:
               result = {'name':object['name']}
               if object['obj'] in self.edits:
                  result['edits'] = self.edits[object['obj']]
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
               else:
                  extra_data = f'text:"{name}"'
               obj = source.objects[name]
               condition = lambda x: True
               if text is not None:
                  condition = condition and (lambda x: text_prop in x.properties and x.properties[text_prop] == text)
               props = None
               for spr in obj.sprites:
                  if condition(spr):
                     props = spr.properties.copy()
                     break
               if props is None:
                  print(f'\tFailed to create: {instance}')
                  continue
               edits = instance.get('edits', {})
               if (color := edits.get('colour')) is not None:
                  if name == 'text':
                     props[source.properties['inactive_color']] = self.convert_color(source, color)
                  else:
                     props[source.properties['color']] = self.convert_color(source, color)
               if (color := edits.get('activecolour')) is not None:
                  if name == 'text':
                     props[source.properties['color']] = self.convert_color(source, color)
               if (img := edits.get('image')) is not None:
                  if img == 'seastar':
                     props[source.properties['appearance']] = 'starfish'
               if (direction := instance.get('direction')) is not None:
                  props[source.properties['facing']] = {0:4,1:1,2:3,3:2}[direction]
               tile_text.append('{' + ops.create_storage(props, extra_data) + '}')
            row_text.append('[' + ','.join(tile_text) + ']')
         tiles_text.append('[' + ','.join(row_text) + ']')
      meta_edits = []
      for target,stuff in self.edits.items():
         if target == 'changed':
            continue
         spr = self.object_table['by_obj'][target]['name']
         text = None
         if spr.startswith('text_'):
            text = spr[len('text_'):]
            spr = 'text'
         edit = [f'target:{ops.id_hash(spr)}']
         if text is not None:
            edit.append(f'text:{ops.id_hash(text)}')
         for prop,val in stuff.items():
            if prop == 'colour':
               edit.append(f'color:{int(self.convert_color(source, val)[1:], 16)}')
            elif prop == 'image':
               if val == 'seastar':
                  edit.append(f'appearance:{ops.id_hash("starfish")}')
         meta_edits.append('{' + ','.join(edit) + '}')
      if len(meta_edits) > 0:
         metadata.append('conversions:[' + ','.join(meta_edits) + ']')
      nbt.append('metadata:{' + ','.join(metadata) + '}')
      nbt.append(',tiles:[' + ','.join(tiles_text) + ']')
      return '{' + ''.join(nbt) + '}'

   def convert_color(self, source, color):
      palette = list(next(iter(source.palettes.values())).keys())
      cx,cy = color.split(',')
      return palette[int(cy) * 7 + int(cx)]


if __name__ == '__main__':
   main()
