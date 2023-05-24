execute positioned ~1 ~1 ~-1 run function baba:editor/pack
summon item ~1 ~1 ~-1 {NoGravity:1b,Age:5980,Tags:["level"],Item:{id:"minecraft:jukebox",Count:1b,tag:{BlockEntityTag:{id:"minecraft:jukebox",RecordItem:{id:"minecraft:tnt",Count:1b}}}}}
execute positioned ~1 ~1 ~-1 run data modify entity @e[type=item,tag=level,distance=..1,limit=1] Item.tag.BlockEntityTag.RecordItem.tag set from storage baba:main level
execute positioned ~1 ~1 ~-1 run tp @e[type=item,tag=level,distance=..1] @p
