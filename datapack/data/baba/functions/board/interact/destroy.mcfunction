data modify storage baba:main spawn set from entity @s HandItems[0].tag.has
execute if block ~ ~-1 ~ black_concrete if data storage baba:main spawn[0] run function baba:board/interact/spawn
kill @s
