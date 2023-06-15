scoreboard players operation subject baba = @s sprite
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
execute if entity @s[scores={last_disabled=0,text_disabled=1..}] run scoreboard players set disable_change baba -1
execute if entity @s[scores={last_disabled=1..,text_disabled=0}] run scoreboard players set disable_change baba 1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] sprite -= subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] text -= subject baba
scoreboard players operation @s[tag=!target] sprite -= subject baba
scoreboard players operation @s[tag=!target] text -= subject baba
# 'ALL is A' disables 'A is B' and 'A write B' unless A is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=262,text=1..}] text_disabled += disable_change baba
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=262,text=..-1}] text_disabled += disable_change baba
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={sprite=0,life=12584543}] text_disabled += disable_change baba
# 'not ALL is text' disables 'text is B' and 'text write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text,scores={sprite=0,life=262}] unless score @s text matches 0 run scoreboard players operation @s text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text,scores={sprite=0,life=12584543}] text_disabled += disable_change baba
# 'not ALL is empty' disables 'empty is B' and 'empty write B'
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty,scores={sprite=0,life=262}] unless score @s text matches 0 run scoreboard players operation @s text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty,scores={sprite=0,life=12584543}] text_disabled += disable_change baba
# 'A is A' disables 'A is B' and 'A write B'
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={text=0}] as @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={sprite=0,life=262}] unless score @s text matches 0 run scoreboard players operation @s text_disabled += disable_change baba
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={text=0}] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={sprite=0,life=12584543}] text_disabled += disable_change baba
# 'not C is A' disables 'A is B' and 'A write B' unless C is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] as @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={sprite=0,life=262}] unless score @s text matches 0 run scoreboard players operation @s text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={sprite=0,life=12584543}] text_disabled += disable_change baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] text += subject baba
scoreboard players operation @s[tag=!target] sprite += subject baba
scoreboard players operation @s[tag=!target] text += subject baba
