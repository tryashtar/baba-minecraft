scoreboard players operation subject baba = @s sprite
scoreboard players operation effect baba = @s text
scoreboard players operation verb baba = @s life
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1

scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] life -= verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] text -= effect baba
# 'ALL verb not X' disables 'A verb X' unless A is empty/text/level/group
execute if entity @s[tag=!subject_inverted] if score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,scores={life=0,text=0}] unless score @s sprite matches 2925313 unless score @s sprite matches 397973 unless score @s sprite matches 6491892 unless score @s sprite matches 4085899 run function baba:board/rules/disabling/update_disabled
# 'not ALL verb not X' disables 'empty/text/not all verb X'
execute if entity @s[tag=subject_inverted] if score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,scores={sprite=2925313}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted] if score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,scores={sprite=397973}] run function baba:board/rules/disabling/update_disabled
execute if entity @s[tag=subject_inverted] if score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=subject_inverted,tag=!effect_inverted,scores={sprite=1065}] run function baba:board/rules/disabling/update_disabled
# 'not A verb not X' disables 'B verb X' unless B is all/empty/text/level/group
execute if entity @s[tag=subject_inverted] unless score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,scores={life=0,text=0}] unless score @s sprite = subject baba unless score @s sprite matches 1065 unless score @s sprite matches 2925313 unless score @s sprite matches 397973 unless score @s sprite matches 6491892 unless score @s sprite matches 4085899 run function baba:board/rules/disabling/update_disabled
# 'not A verb not X' disables 'not A verb X'
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] sprite -= subject baba
execute if entity @s[tag=subject_inverted] unless score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=subject_inverted,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
# 'A verb not X' disables 'A verb X'
execute if entity @s[tag=!subject_inverted] unless score subject baba matches 1065 as @e[type=marker,tag=baba.rule,tag=!subject_inverted,scores={life=0,text=0,sprite=0}] run function baba:board/rules/disabling/update_disabled
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] life += verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=!effect_inverted] text += effect baba
