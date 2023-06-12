data modify storage baba:main objects append value {}
data modify storage baba:main object set from entity @s {}
data modify storage baba:main objects[-1].data set from storage baba:main object.item.tag
data modify storage baba:main objects[-1].tags set from storage baba:main object.Tags
execute store result storage baba:main objects[-1].scores.sprite int 1 run scoreboard players get @s sprite
execute store result storage baba:main objects[-1].scores.text int 1 run scoreboard players get @s text
execute store result storage baba:main objects[-1].scores.variant int 1 run scoreboard players get @s variant
execute store result storage baba:main objects[-1].scores.letter int 1 run scoreboard players get @s letter
execute store result storage baba:main objects[-1].scores.text_id int 1 run scoreboard players get @s text_id
execute store result storage baba:main objects[-1].scores.facing int 1 run scoreboard players get @s facing
execute store result storage baba:main objects[-1].scores.walk int 1 run scoreboard players get @s walk
execute store result storage baba:main objects[-1].scores.number int 1 run scoreboard players get @s number
execute store result storage baba:main objects[-1].scores.color int 1 run scoreboard players get @s color
execute store result storage baba:main objects[-1].scores.inactive_color int 1 run scoreboard players get @s inactive_color
execute store result storage baba:main objects[-1].scores.text_used int 1 run scoreboard players get @s text_used
execute store result storage baba:main objects[-1].scores.z_layer int 1 run scoreboard players get @s z_layer
execute store result storage baba:main objects[-1].scores.direction int 1 run scoreboard players get @s direction
