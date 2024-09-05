execute positioned ~1 ~1 ~-1 run function baba:editor/pack
summon item ~1 ~1 ~-1 {NoGravity:1b,Age:5980,Tags:["level"],Item:{id:"jukebox",count:1,components:{block_entity_data:{id:"jukebox",RecordItem:{id:"tnt",count:1}}}}}
execute positioned ~1 ~1 ~-1 run data modify entity @e[type=item,tag=level,distance=..1,limit=1] Item.components."minecraft:block_entity_data".RecordItem.components."minecraft:custom_data" set from storage baba:main level
execute positioned ~1 ~1 ~-1 run tp @e[type=item,tag=level,distance=..1] @p
