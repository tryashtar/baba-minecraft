tag @s add baba.conversion
execute store result score @s sprite run data get storage baba:main level.metadata.conversions[0].target
execute store result score @s text run data get storage baba:main level.metadata.conversions[0].text
execute store result score @s color run data get storage baba:main level.metadata.conversions[0].color
execute store result score @s appearance run data get storage baba:main level.metadata.conversions[0].appearance

data remove storage baba:main level.metadata.conversions[0]
execute if data storage baba:main level.metadata.conversions[0] summon marker run function baba:editor/load_conversions
