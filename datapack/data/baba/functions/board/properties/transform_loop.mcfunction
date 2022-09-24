execute store success score different baba run data modify storage baba:main swaps[0].sprite set from storage baba:main tiles[0].sprite
execute if score different baba matches 0 run data modify storage baba:main tiles[0].sprite set from storage baba:main swaps[0].transform
data remove storage baba:main swaps[0]
execute unless data storage baba:main swaps[0] if data storage baba:main tiles[0] run function baba:board/properties/transform_next
execute if data storage baba:main tiles[0] run function baba:board/properties/transform_loop
