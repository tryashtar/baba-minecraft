# any text marked for reparsing also marks all of its neighbors for reparsing, recursively
# the reason for this is because we need to find the subject to start parsing from
# all rules that contain these texts are removed
execute store result score rules1 baba run data get storage baba:main rules
execute as @e[type=item_display,tag=baba.object,tag=reparse] at @s run function baba:board/rules/invalidate
execute store result score rules2 baba run data get storage baba:main rules

tag @e[type=item_display,tag=baba.object,tag=reparse,scores={text_used=0}] add unused
scoreboard players set @e[type=item_display,tag=baba.object,tag=reparse] text_used 0
scoreboard players set @e[type=item_display,tag=baba.object,tag=reparse] text_disabled 0
scoreboard players set @e[type=item_display,tag=baba.object,tag=reparse] text_disabled2 0
tag @e[type=item_display,tag=baba.object,tag=reparse,tag=disabled] remove disabled

# parse left-to-right text
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^-1 run function baba:board/rules/parse/new
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] run function baba:board/rules/parse/right

# parse up-to-down text
scoreboard players set first_word baba 2
execute rotated 90 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^-1 run function baba:board/rules/parse/new
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] run function baba:board/rules/parse/down

# text gets the X overlay if all rules it's part of are disabled
execute store result score rules3 baba run data get storage baba:main rules
data modify storage baba:main iter_rules set from storage baba:main rules
function baba:board/rules/graphics/full_disabling
execute as @e[type=item_display,tag=baba.object,tag=reparse,scores={text_used=1..,text_disabled2=1..}] run scoreboard players operation @s text_disabled += @s text_disabled2
execute as @e[type=item_display,tag=baba.object,tag=reparse,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled

execute as @e[type=item_display,tag=baba.object,tag=reparse] run function baba:board/rules/parse/reset
tag @e[type=item_display,tag=baba.object,tag=reparse] remove reparse
execute if score rules2 baba < rules1 baba run tag @e[type=item_display,tag=baba.object] add assign
execute if score rules3 baba > rules2 baba run tag @e[type=item_display,tag=baba.object] add assign

execute if entity @e[type=item_display,tag=baba.object,tag=unused,scores={text_used=1..}] as @a at @s run playsound baba:form_rule master @s
tag @e[type=item_display,tag=baba.object,tag=unused] remove unused
