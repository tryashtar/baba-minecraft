clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
execute if block ~ ~ ~ note_block[instrument=harp] run function baba:editor/pack/block/harp
execute if block ~ ~ ~ note_block[instrument=basedrum] run function baba:editor/pack/block/basedrum
execute if block ~ ~ ~ note_block[instrument=snare] run function baba:editor/pack/block/snare
execute if block ~ ~ ~ note_block[instrument=hat] run function baba:editor/pack/block/hat
execute if block ~ ~ ~ note_block[instrument=bass] run function baba:editor/pack/block/bass
execute if block ~ ~ ~ note_block[instrument=flute] run function baba:editor/pack/block/flute
execute if block ~ ~ ~ note_block[instrument=bell] run function baba:editor/pack/block/bell
execute if block ~ ~ ~ note_block[instrument=guitar] run function baba:editor/pack/block/guitar
execute if block ~ ~ ~ note_block[instrument=chime] run function baba:editor/pack/block/chime
execute if block ~ ~ ~ note_block[instrument=xylophone] run function baba:editor/pack/block/xylophone
data modify storage baba:main tile[-1].extra set from block ~ ~1 ~ RecordItem.tag.extra
execute positioned ~ ~3 ~ if block ~ ~ ~ note_block run function baba:editor/pack/block
