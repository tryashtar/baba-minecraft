scoreboard players set passed baba 0
execute store result score inverted baba run data get storage baba:main condition.parameters[0].inverted

execute if data storage baba:main condition.parameters[0].direction run function baba:board/rules/apply/check/facing_direction
execute unless data storage baba:main condition.parameters[0].direction run function baba:board/rules/apply/check/facing_sprite

data remove storage baba:main condition.parameters[0]
execute if score passed baba matches 1 if data storage baba:main condition.parameters[0] run function baba:board/rules/apply/check/facing
