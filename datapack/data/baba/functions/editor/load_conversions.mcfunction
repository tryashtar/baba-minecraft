summon marker ~ ~ ~ {Tags:["baba.conversion","new"]}
execute store result score @e[type=marker,tag=baba.conversion,tag=new,distance=..0.1,limit=1] sprite run data get storage baba:main level.metadata.conversions[0].target
execute store result score @e[type=marker,tag=baba.conversion,tag=new,distance=..0.1,limit=1] text run data get storage baba:main level.metadata.conversions[0].text
execute store result score @e[type=marker,tag=baba.conversion,tag=new,distance=..0.1,limit=1] color run data get storage baba:main level.metadata.conversions[0].color
execute store result score @e[type=marker,tag=baba.conversion,tag=new,distance=..0.1,limit=1] appearance run data get storage baba:main level.metadata.conversions[0].appearance
tag @e[type=marker,tag=baba.conversion,tag=new,distance=..0.1,limit=1] remove new

data remove storage baba:main level.metadata.conversions[0]
execute if data storage baba:main level.metadata.conversions[0] run function baba:editor/load_conversions
