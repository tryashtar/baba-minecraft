tag @s add loaded
data modify storage baba:main level set from entity @s Item.components."minecraft:block_entity_data".RecordItem.components."minecraft:custom_data".baba
execute positioned 0 1 0 run function baba:editor/load
data modify entity @s PickupDelay set value 0
