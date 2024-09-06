execute store result entity @s data.history[-1].repeats int 1 run scoreboard players get @s repeats
scoreboard players set @s repeats 1
data modify entity @s data.history append value {}
data modify entity @s data.history[-1].objects set from storage baba:main objects
