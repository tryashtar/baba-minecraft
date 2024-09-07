# any text marked for reparsing also marks all of its neighbors for reparsing, recursively
# the reason for this is because we need to find the subject to start parsing from
# all rules that contain these texts are removed
execute as @e[type=item_display,tag=baba.object,tag=active,tag=reparse] at @s run function baba:board/rules/invalidate

tag @e[type=item_display,tag=baba.object,tag=active,tag=reparse,scores={text_used=0}] add unused
scoreboard players set @e[type=item_display,tag=baba.object,tag=active,tag=reparse] text_used 0
data modify storage baba:main new_rules set value []

# parse left-to-right text
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=active,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=first_word,limit=1] rotated 0 0 run function baba:board/rules/parse

# parse up-to-down text
execute rotated 90 0 as @e[type=item_display,tag=baba.object,tag=active,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=first_word,limit=1] rotated 90 0 run function baba:board/rules/parse

execute if data storage baba:main new_rules[0] summon marker run function baba:board/rules/convert

# text gets the X overlay if all rules it's part of are disabled
data modify storage baba:main disabled_ids set value []
data modify storage baba:main enabled_ids set value []
tag @e[type=marker,tag=baba.rule,tag=remove] add changed
execute as @e[type=marker,tag=baba.rule,tag=active] run scoreboard players operation @s last_disabled = @s text_disabled

# apply incoming/outgoing disablers to pre-existing rules
tag @e[type=marker,tag=baba.rule,tag=active,tag=!effect_inverted,tag=!changed] add target
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=disabler,tag=changed] run function baba:board/rules/disabling/disabler_changed
tag @e[type=marker,tag=baba.rule,tag=target] remove target

# apply incoming/pre-existing disablers to incoming rules
tag @e[type=marker,tag=baba.rule,tag=active,tag=!effect_inverted,tag=changed,tag=!remove] add target
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=disabler,tag=!remove] run function baba:board/rules/disabling/disabler_changed
tag @e[type=marker,tag=baba.rule,tag=target] remove target

# apply newly-changed pre-existing transformer disablers to pre-existing transformers
tag @e[type=marker,tag=baba.rule,tag=active,tag=transformer,tag=!changed] add target
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=transform_disabler,tag=!changed,scores={last_disabled=0,text_disabled=1..}] run function baba:board/rules/disabling/transform_disabler_changed
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=transform_disabler,tag=!changed,scores={last_disabled=1..,text_disabled=0}] run function baba:board/rules/disabling/transform_disabler_changed

# apply enabled incoming/outgoing transformer disablers to pre-existing transformers
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=transform_disabler,tag=changed,scores={text_disabled=0}] run function baba:board/rules/disabling/transform_disabler_changed
tag @e[type=marker,tag=baba.rule,tag=target] remove target

# apply enabled incoming/pre-existing transformer disablers to incoming transformers
tag @e[type=marker,tag=baba.rule,tag=active,tag=transformer,tag=changed,tag=!remove] add target
execute if entity @e[type=marker,tag=baba.rule,tag=target,limit=1] as @e[type=marker,tag=baba.rule,tag=active,tag=transform_disabler,tag=!remove,scores={text_disabled=0}] run function baba:board/rules/disabling/transform_disabler_changed
tag @e[type=marker,tag=baba.rule,tag=target] remove target

# apply disabled outgoing rules
execute as @e[type=marker,tag=baba.rule,tag=active,tag=!effect_inverted,tag=remove,scores={text_disabled=1..}] run data modify storage baba:main enabled_ids append from entity @s data.text_ids[]

execute as @e[type=marker,tag=baba.rule,tag=active,scores={last_disabled=0,text_disabled=1..}] run data modify storage baba:main disabled_ids append from entity @s data.text_ids[]
execute as @e[type=marker,tag=baba.rule,tag=active,scores={last_disabled=1..,text_disabled=0}] run data modify storage baba:main enabled_ids append from entity @s data.text_ids[]
execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable_words
execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
execute as @e[type=item_display,tag=baba.object,tag=active,tag=disable_changed] run function baba:board/rules/disabling/update_word
tag @e[type=item_display,tag=baba.object,tag=active,tag=disable_changed] remove disable_changed

execute as @e[type=marker,tag=baba.rule,tag=changed,tag=!subject_inverted] run function baba:board/rules/assign_changed
execute as @e[type=marker,tag=baba.rule,tag=changed,tag=subject_inverted] run function baba:board/rules/assign_changed_inverted
execute if entity @e[type=marker,tag=baba.rule,tag=changed,limit=1] run scoreboard players set rules_changed baba 1
kill @e[type=marker,tag=baba.rule,tag=remove]
tag @e[type=marker,tag=baba.rule,tag=changed] remove changed

tag @e[type=item_display,tag=baba.object,tag=active,tag=reparse,tag=!dirty] add dirty
tag @e[type=item_display,tag=baba.object,tag=active,tag=reparse] remove reparse
execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=unused,scores={text_used=1..},limit=1] as @a at @s run playsound baba:form_rule master @s
tag @e[type=item_display,tag=baba.object,tag=active,tag=unused] remove unused
