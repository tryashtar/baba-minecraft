data modify storage baba:main sprite set from storage baba:main condition.value[0][0].sprite
execute store result score sprite_inverted baba run data get storage baba:main condition.value[0][0].inverted
execute store success score different baba run data modify storage baba:main sprite set from entity @s data.sprite
execute if score different baba = sprite_inverted baba run scoreboard players set match baba 1
