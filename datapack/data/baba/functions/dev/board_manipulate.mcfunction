data modify storage baba:main tile set value []
data modify storage baba:main level set value {tiles:[[[{}]]]}
function baba:editor/pack/block
data modify storage baba:main level.tiles[0][0][0] set from storage baba:main tile[0]
function baba:editor/load/spawn
setblock ~ ~ ~ air

execute as @e[type=item_display,tag=baba.object,scores={sprite=397973},distance=..0.1] run function baba:dev/board_init_text
execute as @e[type=item_display,tag=baba.object,distance=..0.1] run function baba:dev/board_update_palette

tag @e[type=item_display,tag=baba.object,distance=..0.1] add assign
tag @e[type=item_display,tag=baba.object,tag=assign_move,distance=..1.5] add assign
function baba:board/rules/update
function baba:board/rules/assign
execute as @e[type=item_display,tag=baba.object,distance=..0.1] run function baba:display/object
