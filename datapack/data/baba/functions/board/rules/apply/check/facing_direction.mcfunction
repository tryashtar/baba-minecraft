execute store result score facing baba run data get storage baba:main condition.parameters[0].direction
execute if score inverted baba matches 0 if score facing baba = @s facing run scoreboard players set passed baba 1
execute if score inverted baba matches 1 unless score facing baba = @s facing run scoreboard players set passed baba 1
