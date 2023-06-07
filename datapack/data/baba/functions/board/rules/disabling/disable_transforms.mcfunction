# this needs a separate score because this rule can be re-enabled by an 'A is not A' rule
execute store result score disable baba run data get storage baba:main rule.text_ids[0]
execute as @e[type=item_display,tag=baba.object,scores={text_id=1..}] if score @s text_id = disable baba run scoreboard players add @s[scores={text_disabled2=0..}] text_disabled2 1
data remove storage baba:main rule.text_ids[0]
execute if data storage baba:main rule.text_ids[0] run function baba:board/rules/disabling/disable_transforms
