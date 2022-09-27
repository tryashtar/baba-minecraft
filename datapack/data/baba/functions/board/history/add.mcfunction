data modify storage baba:main objects append value {}
data modify storage baba:main object set from entity @s {}
data modify storage baba:main objects[-1].data set from storage baba:main object.data
data modify storage baba:main objects[-1].tags set from storage baba:main object.Tags
execute store result storage baba:main objects[-1].scores.facing int 1 run scoreboard players get @s facing
execute store result storage baba:main objects[-1].scores.walk int 1 run scoreboard players get @s walk
