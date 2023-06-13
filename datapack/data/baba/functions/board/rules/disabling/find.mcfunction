scoreboard players set @e[type=item_display,tag=baba.object,scores={sprite=397973}] text_disabled 0

data modify storage baba:main disabled_ids set value []
data modify storage baba:main enabled_ids set value []
execute as @e[type=marker,tag=baba.rule,tag=!effect_inverted] run function baba:board/rules/disabling/loop
execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable

execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s remove disabled
