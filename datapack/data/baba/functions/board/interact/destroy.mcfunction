data modify storage baba:main spawn set from entity @s data.has
execute if block ~ -1 ~ glass if data storage baba:main spawn[0] run function baba:board/interact/spawn
kill @s
