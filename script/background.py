def generate(palettes, data):
  palette_data = []
  for n,p in palettes.items():
    stuff = []
    colors = []
    for oldcol,tocol in p.items():
      colors.append(f'"{int(oldcol[1:],16)}":{int(tocol[1:],16)}')
    stuff.append(f'colors:{{{",".join(colors)}}}')
    palette_data.append(f'{n}:{{{",".join(stuff)}}}')
  data.append(f'data modify storage baba:main data.palettes set value {{{",".join(palette_data)}}}')
