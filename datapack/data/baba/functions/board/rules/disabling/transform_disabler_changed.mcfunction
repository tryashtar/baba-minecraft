scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
execute if score @s text_disabled matches 1.. run scoreboard players set disable_change baba -1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transformer] sprite -= subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transformer] text -= subject baba
# 'ALL is A' disables 'A is B' and 'A write B' unless A is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=262,text=1..}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=262,text=..-1}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=12584543}] run function baba:board/rules/disabling/update_disabled
# 'not ALL is text' disables 'text is B' and 'text write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=subject_text,scores={sprite=0,life=262}] unless score @s text matches 0 run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=subject_text,scores={sprite=0,life=12584543}] run function baba:board/rules/disabling/update_disabled
# 'not ALL is empty' disables 'empty is B' and 'empty write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=subject_empty,scores={sprite=0,life=262}] unless score @s text matches 0 run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=subject_empty,scores={sprite=0,life=12584543}] run function baba:board/rules/disabling/update_disabled
# 'A is A' disables 'A is B' and 'A write B'
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={text=0}] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=transformer,tag=!remove,scores={sprite=0,life=262}] unless score @s text matches 0 run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={text=0}] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=transformer,tag=!remove,scores={sprite=0,life=12584543}] run function baba:board/rules/disabling/update_disabled
# 'not C is A' disables 'A is B' and 'A write B' unless C is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=transformer,tag=!remove,scores={sprite=0,life=262}] unless score @s text matches 0 run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] as @e[type=marker,tag=baba.rule,tag=transformer,tag=!remove,tag=!subject_inverted,tag=transformer,tag=!remove,scores={sprite=0,life=12584543}] run function baba:board/rules/disabling/update_disabled
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transformer] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transformer] text += subject baba
