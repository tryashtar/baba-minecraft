execute store success score different baba run data modify storage baba:main consume[0].sprite set from block ~ ~ ~ RecordItem.tag.sprite
execute if score different baba matches 1 run data remove storage baba:main consume[0]
execute if score different baba matches 1 if data storage baba:main consume[0] run function baba:board/check_property
execute if score different baba matches 0 run scoreboard players set has_property baba 1
