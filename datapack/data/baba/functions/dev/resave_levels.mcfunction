execute positioned 0 1 50 run function baba:editor/pack
execute positioned 0 1 50 run data modify block ~-1 ~-1 ~1 RecordItem.tag set from entity @e[type=item,distance=..1,nbt={Item:{tag:{BlockEntityTag:{RecordItem:{tag:{}}}}}},limit=1] Item.tag.BlockEntityTag.RecordItem.tag
execute positioned 0 1 50 run kill @e[type=item,distance=..1,nbt={Item:{tag:{BlockEntityTag:{RecordItem:{tag:{}}}}}}]
