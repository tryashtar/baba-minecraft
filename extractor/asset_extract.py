import struct
import os
import sys
from PIL import Image

def main():
  in_path = 'Assets.dat' if len(sys.argv) < 2 else sys.argv[1]
  out_folder = 'assets' if len(sys.argv) < 3 else sys.argv[2]
  if not os.path.exists(in_path):
    print('No Assets.dat found, specify the path or put it in the same folder as this script')
    return

  os.makedirs(out_folder, exist_ok=True) 
  with open(in_path, 'rb') as file:
    data_offsets = read_toc(file)
    data_index = 0

    print(f'Extracting images...')
    image_folder = os.path.join(out_folder, 'images')
    os.makedirs(image_folder, exist_ok=True)
    image_index = 0
    while data_index < len(data_offsets) and try_extract_image(file, data_offsets[data_index], os.path.join(image_folder, f'{image_index}.png')):
      data_index += 1
      image_index += 1

    print(f'Extracting sounds...')
    sound_folder = os.path.join(out_folder, 'sounds')
    os.makedirs(sound_folder, exist_ok=True)
    sound_index = 0
    while data_index < len(data_offsets) and try_extract_sound(file, data_offsets[data_index], os.path.join(sound_folder, f'{sound_index}.ogg')):
      data_index += 1
      sound_index += 1

    print(f'Extracting shaders...')
    shader_folder = os.path.join(out_folder, 'shaders')
    os.makedirs(shader_folder, exist_ok=True)
    shader_index = 0
    while data_index < len(data_offsets) and try_extract_shader(file, data_offsets[data_index], os.path.join(shader_folder, f'{shader_index}_vert.hlsl'), os.path.join(shader_folder, f'{shader_index}_frag.hlsl') ):
      data_index += 1
      shader_index += 1

  print('Done!')

def read_toc(file):
  data_offsets = []
  print(f'Reading table of contents...')
  prev_offset = 0
  while True:
    offset = struct.unpack('<I', file.read(4))[0]
    if offset < prev_offset:
      file.seek(-4, 1)
      break
    data_offsets.append(offset)
    prev_offset = offset
  return data_offsets

def try_extract_image(file, offset, out_path):
  file.seek(offset)
  width = struct.unpack('<H', file.read(2))[0]
  height = struct.unpack('<H', file.read(2))[0]
  file.seek(9, 1)
  length = struct.unpack('<I', file.read(4))[0]
  if length == 0:
    return True
  if width == 0 or height == 0:
    file.seek(-17, 1)
    return False
  print(f'  Image {os.path.basename(out_path)}: {width}x{height}')
  uncompressed = bytearray()
  end = file.tell() + length
  while file.tell() < end:
    block_size = struct.unpack('<I', file.read(4))[0]
    block_start = file.tell()
    while True:
      split = file.read(1)[0]
      if split >= 0x10:
        take = split >> 4
        if take == 0xF:
          while True:
            b = file.read(1)[0]
            take += b
            if b != 0xFF:
              break
        uncompressed.extend(file.read(take))
      if file.tell() >= block_start + block_size:
        break
      repeat_index = len(uncompressed) - struct.unpack('<H', file.read(2))[0]
      repeat = split & 0xF
      if repeat == 0xF:
        while True:
          b = file.read(1)[0]
          repeat += b
          if b != 0xFF:
            break
      for i in range(repeat + 4):
        uncompressed.append(uncompressed[repeat_index+i])
      if file.tell() >= block_start + block_size:
        break
  Image.frombytes("RGBA", (width,height), bytes(uncompressed)).save(out_path)
  return True

def try_extract_sound(file, offset, out_path):
  file.seek(offset)
  file.seek(4, 1)
  length = struct.unpack('<I', file.read(4))[0]
  header = file.read(4)
  if header != b'OggS':
    file.seek(-8, 1)
    return False
  file.seek(-4, 1)
  print(f'  Sound {os.path.basename(out_path)}: {length} bytes')
  with open(os.path.join(out_path), 'wb') as sound:
    sound.write(file.read(length))
  return True

def try_extract_shader(file, offset, vert_path, frag_path):
  file.seek(offset)
  length = struct.unpack('<I', file.read(4))[0]
  header = file.read(8)
  if header != b'#version':
    file.seek(-12, 1)
    return False
  file.seek(-8, 1)
  print(f'  Vertex Shader {os.path.basename(vert_path)}: {length} bytes')
  with open(vert_path, 'wb') as shader:
    shader.write(file.read(length))
  length = struct.unpack('<I', file.read(4))[0]
  print(f'  Fragment Shader {os.path.basename(frag_path)}: {length} bytes')
  with open(frag_path, 'wb') as shader:
    shader.write(file.read(length))
  return True

if __name__ == '__main__':
  main()
