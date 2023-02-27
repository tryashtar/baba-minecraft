import struct
import zlib
import os
import sys
from PIL import Image

image_count = 3189
sound_count = 245
shader_count = 118
font_count = 2
in_path = 'Assets.dat' if len(sys.argv) < 2 else sys.argv[1]
out_path = 'assets' if len(sys.argv) < 3 else sys.argv[2]
if not os.path.exists(in_path):
  print('No Assets.dat found, specify the path or put it in the same folder as this script')
  exit()

os.makedirs(out_path, exist_ok=True) 
with open(in_path, 'rb') as file:
  image_offsets = []
  sound_offsets = []
  shader_offsets = []
  print(f'Reading table of contents...')
  print(f'  {image_count} images')
  for i in range(image_count):
    offset = struct.unpack('<I', file.read(4))[0]
    image_offsets.append(offset)
  print(f'  {sound_count} sounds')
  for i in range(sound_count):
    offset = struct.unpack('<I', file.read(4))[0]
    sound_offsets.append(offset)
  print(f'  {shader_count} shaders')
  for i in range(shader_count):
    offset = struct.unpack('<I', file.read(4))[0]
    shader_offsets.append(offset)
  print(f'Extracting images...')
  os.makedirs(os.path.join(out_path, 'images'), exist_ok=True)
  for n,o in enumerate(image_offsets):
    file.seek(o)
    width = struct.unpack('<H', file.read(2))[0]
    height = struct.unpack('<H', file.read(2))[0]
    file.read(9)
    length = struct.unpack('<I', file.read(4))[0]
    if length == 0:
      print(f'  Image {n} is empty!')
      continue
    print(f'  Image {n}: {width}x{height}')
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
    Image.frombytes("RGBA", (width,height), bytes(uncompressed)).save(os.path.join(out_path, 'images', f'{n}.png'))
  print(f'Extracting sounds...')
  os.makedirs(os.path.join(out_path, 'sounds'), exist_ok=True)
  for n,o in enumerate(sound_offsets):
    file.seek(o)
    file.seek(4, 1)
    length = struct.unpack('<I', file.read(4))[0]
    print(f'  Sound {n}: {length} bytes')
    with open(os.path.join(out_path, 'sounds', f'{n}.ogg'), 'wb') as sound:
      sound.write(file.read(length))
  print(f'Extracting shaders...')
  os.makedirs(os.path.join(out_path, 'shaders'), exist_ok=True)
  for n,o in enumerate(shader_offsets):
    file.seek(o)
    length = struct.unpack('<I', file.read(4))[0]
    print(f'  Shader {n}: {length} bytes')
    with open(os.path.join(out_path, 'shaders', f'{n}.hlsl'), 'wb') as shader:
      shader.write(file.read(length))
