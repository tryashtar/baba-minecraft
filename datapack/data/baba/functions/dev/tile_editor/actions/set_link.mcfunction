# change link
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data entity @s item.tag.level_data.link[0] run data modify entity @s item.tag.level_data.link set value [0,0]
execute store result score y baba run data get entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[0]
execute store result score x baba run data get entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[1]
execute if entity @s[tag=up] store result entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[0] int 1 run scoreboard players add y baba 1
execute if entity @s[tag=down] store result entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[0] int 1 run scoreboard players remove y baba 1
execute if entity @s[tag=right] store result entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[1] int 1 run scoreboard players add x baba 1
execute if entity @s[tag=left] store result entity @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] item.tag.level_data.link[1] int 1 run scoreboard players remove x baba 1

# update menu
data modify storage baba:main link set value [-1,-1]
data modify storage baba:main level_name set value '[{"text":"[","color":"red"},{"score":{"name":"y","objective":"baba"}},",",{"score":{"name":"x","objective":"baba"}},"]"]'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run function baba:progress/get_name
data modify entity @e[type=text_display,tag=name,sort=nearest,limit=1] text set value '{"storage":"baba:main","nbt":"level_name","interpret":true}'

# update block
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book"}
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Bees[0] run data modify block ~ ~-1 ~ Bees append value {EntityData:{}}
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s run data modify block ~ ~-1 ~ Items[0].tag.extra.data.level_data.link set from entity @s item.tag.level_data.link
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s run data modify block ~ ~-1 ~ Bees[0].EntityData.extra.data.level_data.link set from entity @s item.tag.level_data.link
