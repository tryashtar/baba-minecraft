execute if block ~ ~ ~ #baba:editor_floor run data modify storage baba:main level_metadata set from block ~ ~-1 ~ RecordItem.tag.level_metadata
execute if block ~ ~ ~ #baba:editor_floor if block ~-1 ~-1 ~ #signs run data modify storage baba:main level_metadata.name set from block ~-1 ~-1 ~ front_text.messages[0]
execute if block ~ ~ ~ #baba:editor_floor positioned ~ ~1 ~ run function baba:editor/pack/grid
execute unless block ~ ~ ~ #baba:editor_floor positioned ~ ~-1 ~ run function baba:editor/pack/search
