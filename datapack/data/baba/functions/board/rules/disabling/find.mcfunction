data modify storage baba:main iter_rules set value []
data modify storage baba:main iter_rules append from storage baba:main rules[{effect:{inverted:0b}}]

execute if data storage baba:main iter_rules[0] run function baba:board/rules/disabling/loop

execute as @e[type=item_display,tag=baba.object,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s remove disabled
