# packs note blocks into jukebox
data modify storage baba:main level set value []
data modify storage baba:main level_metadata set value {}
function baba:editor/pack/search
summon item ~ ~ ~ {Tags:["level"],Item:{id:"minecraft:jukebox",Count:1b,tag:{BlockEntityTag:{id:"minecraft:jukebox",RecordItem:{id:"minecraft:tnt",Count:1b}}}}}
data modify entity @e[type=item,tag=level,distance=..0.1,limit=1] Item.tag.BlockEntityTag.RecordItem.tag.level set from storage baba:main level
data modify entity @e[type=item,tag=level,distance=..0.1,limit=1] Item.tag.BlockEntityTag.RecordItem.tag.level_metadata set from storage baba:main level_metadata
