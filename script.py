import tryashtools as tat

text = [
  ('baba', 'diamond_block'),
  ('is', 'redstone_block'),
  ('you', 'emerald_block')
]
current_char = ord('\ue000')
providers = [{"type":"space","advances":{" ":24,"!":-240,".":-1}}]
en_us = {"baba.row_end":"!"}
for r in range(0,10):
  check0 = ['data modify storage baba:main text append value \'" "\'']
  check1 = ['data modify storage baba:main text append value \'" "\'']
  check2 = ['data modify storage baba:main text append value \'" "\'']
  chars = []
  for t,block in text:
    a1 = chr(current_char)
    a2 = chr(current_char+1)
    a3 = chr(current_char+2)
    chars.append(a1+a2+a3)
    en_us[f'baba.text.{t}.row{r}.anim0'] = a1+'.'
    en_us[f'baba.text.{t}.row{r}.anim1'] = a2+'.'
    en_us[f'baba.text.{t}.row{r}.anim2'] = a3+'.'
    check0.append(f'execute if block ~ ~ ~ {block} run data modify storage baba:main text[-1] set value \'{{"translate":"baba.text.{t}.row{r}.anim0"}}\'')
    check1.append(f'execute if block ~ ~ ~ {block} run data modify storage baba:main text[-1] set value \'{{"translate":"baba.text.{t}.row{r}.anim1"}}\'')
    check2.append(f'execute if block ~ ~ ~ {block} run data modify storage baba:main text[-1] set value \'{{"translate":"baba.text.{t}.row{r}.anim2"}}\'')
    current_char += 3
  providers.append({"type":"bitmap","file":"baba:text.png","ascent":-r*24,"height":24,"chars":chars})
  tat.write_lines(check0, f'datapack/data/baba/functions/check_block/row{r}_anim0.mcfunction')
  tat.write_lines(check1, f'datapack/data/baba/functions/check_block/row{r}_anim1.mcfunction')
  tat.write_lines(check2, f'datapack/data/baba/functions/check_block/row{r}_anim2.mcfunction')
tat.write_json({"providers":providers}, 'resourcepack/assets/baba/font/main.json')
tat.write_json(en_us, 'resourcepack/assets/baba/lang/en_us.json')
