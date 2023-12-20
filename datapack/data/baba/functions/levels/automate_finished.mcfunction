execute if score win baba matches 1 unless data storage baba:main moves[0] run tellraw @a [{"storage":"baba:main","nbt":"level.metadata.name","interpret":true,"color":"green"},": passed!"]
execute if score win baba matches 1 if data storage baba:main moves[0] run tellraw @a [{"storage":"baba:main","nbt":"level.metadata.name","interpret":true,"color":"yellow"},": won early!"]
execute if score win baba matches 0 run tellraw @a [{"storage":"baba:main","nbt":"level.metadata.name","interpret":true,"color":"red"},": failed!"]
scoreboard players set @a[scores={win=1..}] win 0
data modify storage baba:main moves set value []
data modify storage baba:main moves set from storage baba:main moves_list[0]
data remove storage baba:main moves_list[0]
data modify storage baba:main level set from storage baba:main level_list[0]
execute if data storage baba:main level_list[0] positioned 0 1 0 run function baba:editor/load
data remove storage baba:main level_list[0]
