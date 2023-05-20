execute if block ~ ~ ~ #baba:editor_floor run data modify storage baba:main level_metadata set from block ~ ~-2 ~ RecordItem.tag.level_metadata
execute if block ~ ~ ~ #baba:editor_floor positioned ~ ~1 ~ run function baba:editor/pack/grid
execute unless block ~ ~ ~ #baba:editor_floor positioned ~ ~-1 ~ run function baba:editor/pack/search
