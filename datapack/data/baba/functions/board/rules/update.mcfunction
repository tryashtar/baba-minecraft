# any text marked for reparsing also marks all of its neighbors for reparsing, recursively
# the reason for this is because we need to find the subject to start parsing from
# all rules that contain these texts are removed
execute as @e[type=item_display,tag=baba.object,tag=reparse] at @s run function baba:board/rules/invalidate

tag @e[type=item_display,tag=baba.object,tag=reparse,scores={text_used=0}] add unused
scoreboard players set @e[type=item_display,tag=baba.object,tag=reparse] text_used 0
data modify storage baba:main new_rules set value []

# parse left-to-right text
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 0 0 run function baba:board/rules/parse

# parse up-to-down text
execute rotated 90 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 90 0 run function baba:board/rules/parse

execute if data storage baba:main new_rules[0] summon marker run function baba:board/rules/convert

# text gets the X overlay if all rules it's part of are disabled
data modify storage baba:main disabled_ids set value []
data modify storage baba:main enabled_ids set value []
tag @e[type=marker,tag=baba.rule,tag=remove] add changed
execute as @e[type=marker,tag=baba.rule,tag=disabler,tag=changed] run function baba:board/rules/disabling/disabler_changed
execute as @e[type=marker,tag=baba.rule,tag=!effect_inverted,tag=changed,tag=!remove] run function baba:board/rules/disabling/normal_added
execute as @e[type=marker,tag=baba.rule,tag=!effect_inverted,tag=changed,tag=remove,scores={text_disabled=1..}] run data modify storage baba:main enabled_ids append from entity @s data.text_ids[]
execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable_words
execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
execute as @e[type=item_display,tag=baba.object,tag=disable_changed] run function baba:board/rules/disabling/update_word
tag @e[type=item_display,tag=baba.object,tag=disable_changed] remove disable_changed

execute as @e[type=marker,tag=baba.rule,tag=changed,tag=!subject_inverted] run function baba:board/rules/assign_changed
execute as @e[type=marker,tag=baba.rule,tag=changed,tag=subject_inverted] run function baba:board/rules/assign_changed_inverted
kill @e[type=marker,tag=baba.rule,tag=remove]
tag @e[type=marker,tag=baba.rule,tag=changed] remove changed

tag @e[type=item_display,tag=baba.object,tag=reparse,tag=!dirty] add dirty
tag @e[type=item_display,tag=baba.object,tag=reparse] remove reparse
execute if entity @e[type=item_display,tag=baba.object,tag=unused,scores={text_used=1..},limit=1] as @a at @s run playsound baba:form_rule master @s
tag @e[type=item_display,tag=baba.object,tag=unused] remove unused
