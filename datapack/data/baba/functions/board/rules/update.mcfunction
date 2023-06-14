# any text marked for reparsing also marks all of its neighbors for reparsing, recursively
# the reason for this is because we need to find the subject to start parsing from
# all rules that contain these texts are removed
execute as @e[type=item_display,tag=baba.object,tag=reparse] at @s run function baba:board/rules/invalidate

tag @e[type=item_display,tag=baba.object,tag=reparse,scores={text_used=0}] add unused
scoreboard players set @e[type=item_display,tag=baba.object,tag=reparse] text_used 0

# parse left-to-right text
execute rotated 0 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 0 0 run function baba:board/rules/parse

# parse up-to-down text
execute rotated 90 0 as @e[type=item_display,tag=baba.object,tag=reparse] positioned as @s positioned ^ ^ ^-1 unless entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] positioned ^ ^ ^2 if entity @e[type=item_display,tag=baba.object,tag=reparse,distance=..0.1,limit=1] run tag @s add first_word
execute if entity @e[type=item_display,tag=baba.object,tag=first_word,limit=1] rotated 90 0 run function baba:board/rules/parse

# text gets the X overlay if all rules it's part of are disabled
data modify storage baba:main disabled_ids set value []
data modify storage baba:main enabled_ids set value []
tag @e[type=marker,tag=baba.rule,tag=remove] add changed
execute as @e[type=marker,tag=baba.rule,tag=disabler,tag=changed] run function baba:board/rules/disabling/disabler_changed
execute as @e[type=marker,tag=baba.rule,tag=!effect_inverted,tag=changed] run function baba:board/rules/disabling/normal_changed
execute if data storage baba:main disabled_ids[0] run function baba:board/rules/disabling/disable_words
execute if data storage baba:main enabled_ids[0] run function baba:board/rules/disabling/enable_words
execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s add dirty
execute as @e[type=item_display,tag=baba.object,tag=!disabled,scores={text_used=1..}] if score @s text_disabled >= @s text_used run tag @s add disabled
execute as @e[type=item_display,tag=baba.object,tag=disabled,scores={text_used=1..}] unless score @s text_disabled >= @s text_used run tag @s remove disabled

execute as @e[type=marker,tag=baba.rule,tag=changed,tag=!subject_inverted] run function baba:board/rules/assign_changed
execute as @e[type=marker,tag=baba.rule,tag=changed,tag=subject_inverted] run function baba:board/rules/assign_changed_inverted
kill @e[type=marker,tag=baba.rule,tag=remove]
tag @e[type=marker,tag=baba.rule,tag=changed] remove changed

tag @e[type=item_display,tag=baba.object,tag=reparse] add dirty
tag @e[type=item_display,tag=baba.object,tag=reparse] remove reparse
execute if entity @e[type=item_display,tag=baba.object,tag=unused,scores={text_used=1..},limit=1] as @a at @s run playsound baba:form_rule master @s
tag @e[type=item_display,tag=baba.object,tag=unused] remove unused
