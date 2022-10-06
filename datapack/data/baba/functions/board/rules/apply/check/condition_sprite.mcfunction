data modify storage baba:main sprite set from storage baba:main condition.parameters[0].sprite
execute store result score sprite_inverted baba run data get storage baba:main condition.parameters[0].inverted
execute store success score different baba run data modify storage baba:main sprite set from entity @s data.sprite
execute if score sprite_inverted baba matches 1 if entity @s[tag=is_text] run scoreboard players set sprite_inverted baba 2
execute if score different baba = sprite_inverted baba run scoreboard players set passes baba 1
