data modify storage baba:main rule.done set value 1b

execute store result score enable baba run data get storage baba:main rule[0].text_ids[0]
execute as @e[type=item_display,tag=baba.object,scores={text_id=1..}] if score @s text_id = enable baba run scoreboard players set @s text_disabled2 -1
data remove storage baba:main rule[0].text_ids[0]
execute if data storage baba:main rule[0].text_ids[0] run function baba:board/rules/disabling/enable
