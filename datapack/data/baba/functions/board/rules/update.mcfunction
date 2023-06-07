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
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 0 0 run function baba:board/rules/parse

# parse up-to-down text
execute rotated 90 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 90 0 run function baba:board/rules/parse

# text gets the X overlay if all rules it's part of are disabled
execute store result score rules3 baba run data get storage baba:main rules
function baba:board/rules/disabling/find

tag @e[type=item_display,tag=baba.object,tag=reparse] remove reparse
execute if score rules2 baba < rules1 baba run tag @e[type=item_display,tag=baba.object] add assign
execute if score rules3 baba > rules2 baba run tag @e[type=item_display,tag=baba.object] add assign

execute if entity @e[type=item_display,tag=baba.object,tag=unused,scores={text_used=1..}] as @a at @s run playsound baba:form_rule master @s
tag @e[type=item_display,tag=baba.object,tag=unused] remove unused
