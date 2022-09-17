execute store result score different baba run data modify storage baba:main consume[0].sprite set from block ~ ~ ~ RecordItem.tag.sprite
execute if score different baba matches 1 run data remove storage baba:main consume[0]
execute if score different baba matches 1 if data storage baba:main consume[0] run function baba:check_can_move
execute if score different baba matches 0 run scoreboard players set can_move baba 1
