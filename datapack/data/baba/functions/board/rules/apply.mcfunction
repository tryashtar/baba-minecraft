# if this rule's subject matches the object, proceed to check conditions
scoreboard players operation subject baba = @s sprite
scoreboard players operation verb baba = @s life
scoreboard players operation effect baba = @s text
execute store success score effect_noun baba if entity @s[tag=effect_noun]
data modify storage baba:main rule_conditions set from entity @s data.conditions
data modify storage baba:main effect set value {}
execute store result storage baba:main effect.text int 1 run scoreboard players get effect baba
execute store success storage baba:main effect.inverted byte 1 if entity @s[tag=effect_inverted]

execute if entity @s[tag=!inverted_subject,scores={sprite=1065}] as @e[type=item_display,tag=baba.object,tag=!not_all,tag=assign] at @s run function baba:board/rules/apply/check
execute if entity @s[tag=inverted_subject,scores={sprite=1065}] as @e[type=item_display,tag=baba.object,tag=not_all,tag=assign] at @s run function baba:board/rules/apply/check
execute if entity @s[tag=!inverted_subject] unless score subject baba matches 1065 as @e[type=item_display,tag=baba.object,tag=assign] at @s if score @s sprite = subject baba run function baba:board/rules/apply/check
execute if entity @s[tag=inverted_subject] unless score subject baba matches 1065 as @e[type=item_display,tag=baba.object,tag=!not_all,tag=assign] at @s unless score @s sprite = subject baba run function baba:board/rules/apply/check
