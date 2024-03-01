execute unless block ~1 ~1 ~ jukebox run tellraw @p {"text":"Place a level jukebox above the sign to unpack","color":"red"}
execute if block ~1 ~1 ~ jukebox run data modify storage baba:main level set from block ~1 ~1 ~ RecordItem.components."minecraft:custom_data"
execute if block ~1 ~1 ~ jukebox positioned ~1 ~1 ~ run function baba:editor/unpack
