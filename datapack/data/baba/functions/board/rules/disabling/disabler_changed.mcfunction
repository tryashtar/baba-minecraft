scoreboard players operation subject baba = @s sprite
scoreboard players operation effect baba = @s text
scoreboard players operation verb baba = @s life
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] sprite -= subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] life -= verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] text -= effect baba
# 'ALL verb not X' disables 'A verb X' unless A is empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,tag=!effect_inverted,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0}] run function baba:board/rules/disabling/update_disabled
# 'not ALL verb not X' disables 'empty/text/not all verb X'
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,tag=!effect_inverted,tag=subject_empty] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,tag=!effect_inverted,tag=subject_text] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=subject_inverted,tag=!effect_inverted,tag=subject_all] run function baba:board/rules/disabling/update_disabled
# 'not A verb not X' disables 'B verb X' unless B is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,tag=!effect_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0,sprite=1..}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted,tag=!subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,tag=!effect_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0,sprite=..-1}] run function baba:board/rules/disabling/update_disabled
# 'not A verb not X' disables 'not A verb X'
execute if entity @s[tag=subject_inverted,tag=!subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=subject_inverted,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
# 'A verb not X' disables 'A verb X'
execute if entity @s[tag=!subject_inverted,tag=!subject_all] as @e[type=marker,tag=baba.rule,tag=!remove,tag=!subject_inverted,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] life += verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!remove,tag=!effect_inverted] text += effect baba
