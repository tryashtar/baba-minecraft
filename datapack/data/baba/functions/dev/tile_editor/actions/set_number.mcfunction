# change number
execute if entity @s[tag=up] run scoreboard players add @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] number 1
execute if entity @s[tag=down] run scoreboard players remove @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] number 1
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run tag @s[tag=style.digit] add new_style.letter
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run tag @s[tag=style.letter] add new_style.dice
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run tag @s[tag=style.dice] add new_style.digit
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] run tag @s[tag=!style.digit,tag=!style.letter,tag=!style.dice] add new_style.digit
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove style.digit
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove style.letter
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove style.dice
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=new_style.digit] run tag @s add style.digit
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=new_style.letter] run tag @s add style.letter
execute if entity @s[tag=style] as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=new_style.dice] run tag @s add style.dice
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove new_style.digit
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove new_style.letter
execute if entity @s[tag=style] run tag @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] remove new_style.dice

# update preview and menu
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s run function baba:dev/tile_editor/update_preview
data modify entity @e[type=text_display,tag=number,sort=nearest,limit=1] text set value '{"score":{"name":"@e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1]","objective":"number"}}'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.digit] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"123"'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.letter] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"ABC"'
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] if entity @s[tag=style.dice] run data modify entity @e[type=text_display,tag=style,sort=nearest,limit=1] text set value '"dice"'

# update block
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0] run data modify block ~ ~-1 ~ Items append value {id:"book",Count:1b}
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s store result block ~ ~-1 ~ Items[0].tag.extra.scores.number int 1 run scoreboard players get @s number
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] unless data block ~ ~-1 ~ Items[0].tag.extra.tags run data modify block ~ ~-1 ~ Items[0].tag.extra.tags set value []
execute at @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] store result score loop baba run data get block ~ ~-1 ~ Items[0].tag.extra.tags
execute if score loop baba matches 1.. as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s run function baba:dev/tile_editor/actions/remove_style
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s[tag=style.digit] run data modify block ~ ~-1 ~ Items[0].tag.extra.tags append value "style.digit"
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s[tag=style.letter] run data modify block ~ ~-1 ~ Items[0].tag.extra.tags append value "style.letter"
execute as @e[type=item_display,tag=baba.object,tag=tile_editor_preview,sort=nearest,limit=1] at @s[tag=style.dice] run data modify block ~ ~-1 ~ Items[0].tag.extra.tags append value "style.dice"
