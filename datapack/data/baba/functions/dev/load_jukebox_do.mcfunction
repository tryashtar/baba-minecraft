tag @s add loaded
data modify storage baba:main level set from entity @s Item.tag.BlockEntityTag.RecordItem.tag
execute positioned 0 1 0 run function baba:editor/load
data modify entity @s PickupDelay set value 0
