scoreboard players set disable_change baba 1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] sprite -= @s sprite
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] life -= @s life
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] text -= @s text
# 'A verb X' is disabled by 'ALL verb not X' unless A is empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={life=0,text=0}] run function baba:board/rules/disabling/update_disabled
# 'empty/text/not all verb X' is disabled by 'not ALL verb not X'
execute if entity @s[tag=!subject_inverted,tag=subject_empty] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={life=0,text=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=subject_text] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={life=0,text=0}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=subject_all] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=!subject_inverted,tag=subject_all,scores={life=0,text=0}] run function baba:board/rules/disabling/update_disabled
# 'B verb X' is disabled by 'not A verb not X' unless B is all/empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=subject_inverted,tag=!subject_all,scores={life=0,text=0,sprite=1..}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=subject_inverted,tag=!subject_all,scores={life=0,text=0,sprite=..-1}] run function baba:board/rules/disabling/update_disabled
# 'not A verb X' is disabled by 'not A verb not X'
execute if entity @s[tag=subject_inverted] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=subject_inverted,tag=!subject_all,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
# 'A verb not X' disables 'A verb X'
execute if entity @s[tag=!subject_inverted] at @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed,tag=!subject_inverted,tag=!subject_all,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] life += verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=disabler,tag=!changed] text += effect baba
