scoreboard players operation subject baba = @s sprite
scoreboard players operation effect baba = @s text
scoreboard players operation verb baba = @s life
execute if entity @s[tag=!remove] run scoreboard players set disable_change baba 1
execute if entity @s[tag=remove] run scoreboard players set disable_change baba -1
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] sprite -= subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] life -= verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] text -= effect baba
# 'ALL verb not X' disables 'A verb X' unless A is empty/text/level/group
execute if entity @s[tag=!subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0}] text_disabled += disable_change baba
# 'not ALL verb not X' disables 'empty/text/not all verb X'
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_empty] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=subject_text] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=subject_inverted,tag=subject_all] text_disabled += disable_change baba
# 'not A verb not X' disables 'B verb X' unless B is all/empty/text/level/group
execute if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0,sprite=1..}] text_disabled += disable_change baba
execute if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,tag=!subject_all,tag=!subject_empty,tag=!subject_text,tag=!subject_level,tag=!subject_group,scores={life=0,text=0,sprite=..-1}] text_disabled += disable_change baba
# 'not A verb not X' disables 'not A verb X'
execute if entity @s[tag=subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=subject_inverted,scores={life=0,text=0,sprite=0}] text_disabled += disable_change baba
# 'A verb not X' disables 'A verb X'
execute if entity @s[tag=!subject_inverted,tag=!subject_all] run scoreboard players operation @e[type=marker,tag=baba.rule,tag=target,tag=!subject_inverted,scores={life=0,text=0,sprite=0}] text_disabled += disable_change baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] sprite += subject baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] life += verb baba
scoreboard players operation @e[type=marker,tag=baba.rule,tag=target] text += effect baba
