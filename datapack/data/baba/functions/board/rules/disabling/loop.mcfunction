scoreboard players operation subject baba = @s sprite
scoreboard players operation effect baba = @s text
scoreboard players operation verb baba = @s life
execute store success score subject_inverted baba if entity @s[tag=subject_inverted]
execute store success score effect_noun baba if entity @s[tag=effect_noun]
data modify storage baba:main current_ids set from entity @s data.text_ids

execute as @e[type=marker,tag=baba.rule,tag=effect_inverted,nbt={data:{conditions:[]}}] run function baba:board/rules/disabling/check
execute if entity @s[tag=!effect_inverted,tag=effect_noun,scores={life=262}] as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,tag=effect_noun,scores={life=262}] run function baba:board/rules/disabling/check_transforms
execute if entity @s[tag=!effect_inverted,scores={life=12584543}] as @e[type=marker,tag=baba.rule,tag=!subject_inverted,tag=!effect_inverted,tag=effect_noun,scores={life=262}] run function baba:board/rules/disabling/check_transforms
