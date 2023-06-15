scoreboard players operation subject baba = @s sprite
scoreboard players set disable_change baba 1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transform_disabler] sprite -= subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transform_disabler] text -= subject baba
# 'A is B' and 'A write B' are disabled by 'ALL is A' unless A is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=262}] unless score @s sprite = @s text at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=12584543}] at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
# 'text is B' and 'text write B' are disabled by 'not ALL is text'
execute if entity @s[tag=!subject_inverted,tag=subject_text,scores={life=262}] unless score @s sprite = @s text at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=subject_text,scores={life=12584543}] at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
# 'empty is B' and 'empty write B' are disabled by 'not ALL is empty'
execute if entity @s[tag=!subject_inverted,tag=subject_empty,scores={life=262}] unless score @s sprite = @s text at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=subject_empty,scores={life=12584543}] at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=subject_all,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
# 'A is B' and 'A write B' are disabled by 'A is A'
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={life=262}] unless score @s sprite = @s text at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=!subject_inverted,scores={sprite=0,text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={life=12584543}] at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=!subject_inverted,scores={sprite=0,text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
# 'A is B' and 'A write B' are disabled by 'not C is A' unless C is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={life=262}] unless score @s sprite = @s text at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=!subject_all,scores={life=12584543}] at @e[type=marker,tag=baba.rule,tag=transform_disabler,tag=!changed,tag=subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={text=0,text_disabled=0}] run function baba:board/rules/disabling/update_disabled
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transform_disabler] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=transform_disabler] text += subject baba
