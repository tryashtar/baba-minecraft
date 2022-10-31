execute as @e[type=armor_stand,tag=baba.object,tag=reparse] at @s run function baba:board/rules/invalidate
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_used 0
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_disabled 0
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_disabled2 0
tag @e[type=armor_stand,tag=baba.object,tag=disabled] remove disabled
execute as @e[type=armor_stand,tag=baba.object,tag=reparse] at @s run function baba:board/rules/parse

execute as @e[type=armor_stand,tag=baba.object,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=armor_stand,tag=baba.object,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
tag @e[type=armor_stand,tag=baba.object,tag=reparse] remove reparse
