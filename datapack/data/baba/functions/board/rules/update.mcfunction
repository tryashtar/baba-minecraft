# any text marked for reparsing also marks all of its neighbors for reparsing, recursively
# the reason for this is because we need to find the subject to start parsing from
# all rules that contain these texts are removed
execute store result score rules1 baba if data storage baba:main rules[]
execute as @e[type=armor_stand,tag=baba.object,tag=reparse] at @s run function baba:board/rules/invalidate
execute store result score rules2 baba if data storage baba:main rules[]

tag @e[type=armor_stand,tag=baba.object,tag=reparse,scores={text_used=0}] add unused
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_used 0
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_disabled 0
scoreboard players set @e[type=armor_stand,tag=baba.object,tag=reparse] text_disabled2 0
tag @e[type=armor_stand,tag=baba.object,tag=reparse,tag=disabled] remove disabled
execute as @e[type=armor_stand,tag=baba.object,tag=reparse] at @s run function baba:board/rules/parse
execute store result score rules3 baba if data storage baba:main rules[]

# text gets the X overlay if all rules it's part of are disabled
data modify storage baba:main iter_rules set from storage baba:main rules
function baba:board/rules/graphics/full_disabling
execute as @e[type=armor_stand,tag=baba.object,tag=reparse,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=armor_stand,tag=baba.object,tag=reparse,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled

execute as @e[type=armor_stand,tag=baba.object,tag=reparse] run function baba:board/rules/parse/reset
tag @e[type=armor_stand,tag=baba.object,tag=reparse] remove reparse
execute if score rules2 baba < rules1 baba run tag @e[type=armor_stand,tag=baba.object] add assign
execute if score rules3 baba > rules2 baba run tag @e[type=armor_stand,tag=baba.object] add assign

execute if entity @e[type=armor_stand,tag=baba.object,tag=unused,scores={text_used=1..}] as @a at @s run playsound baba:form_rule master @s
tag @e[type=armor_stand,tag=baba.object,tag=unused] remove unused
