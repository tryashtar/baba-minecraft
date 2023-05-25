clear @a[tag=edit_number,distance=..3]
execute as @a[tag=edit_number,distance=..3] run function baba:dev/tile_editor/give_item
tag @a[distance=..3] remove edit_number
execute at @e[tag=tile_editor,distance=..3,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book",Count:1b}
execute store result score number baba run data get entity @s Item.Count
execute at @e[tag=tile_editor,distance=..3,sort=nearest,limit=1] store result block ~ ~-1 ~ Items[0].tag.extra.scores.number int 1 run scoreboard players get number baba
# changing style is hard
data modify entity @e[type=text_display,tag=tile_number,distance=..3,sort=nearest,limit=1] text set value '{"score":{"name":"number","objective":"baba"}}'
kill @s
