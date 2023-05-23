data modify storage baba:main level set from block 0 1 -8 RecordItem.tag.level
data modify storage baba:main level_metadata set value {}
data modify storage baba:main level_metadata set from block 0 1 -8 RecordItem.tag.level_metadata
execute positioned 0 1 0 run function baba:editor/load
