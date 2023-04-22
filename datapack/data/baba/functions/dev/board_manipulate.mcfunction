data modify storage baba:main tile set value []
data modify storage baba:main level set value [[[{}]]]
function baba:editor/pack/block
data modify storage baba:main level[0][0][0] set from storage baba:main tile[0]
function baba:editor/load/spawn
setblock ~ ~ ~ air
scoreboard players add @e[type=item_display,tag=baba.object,scores={sprite=30442},distance=..0.1] text_id 0
tag @e[type=item_display,tag=baba.object,scores={sprite=30442,text_id=0},distance=..0.1] add new_text
scoreboard players operation @e[type=item_display,tag=baba.object,tag=new_text,distance=..0.1] text_id > @e[type=item_display,tag=baba.object,scores={sprite=30442}] text_id
scoreboard players add @e[type=item_display,tag=baba.object,tag=new_text,distance=..0.1] text_id 1
tag @e[type=item_display,tag=baba.object,tag=new_text,distance=..0.1] remove new_text
execute as @e[type=item_display,tag=baba.object,distance=..0.1] run function baba:display/stand/object
