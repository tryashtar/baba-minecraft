data modify storage baba:main level set from entity @s Item.tag.BlockEntityTag.RecordItem.tag.level
data modify storage baba:main level_metadata set value {}
data modify storage baba:main level_metadata set from entity @s Item.tag.BlockEntityTag.RecordItem.tag.level_metadata
execute positioned 0 1 0 run function baba:editor/load
data modify entity @s PickupDelay set value 0
