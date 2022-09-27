data modify storage baba:main previous set from entity @s data.history[-1]
execute store result score repeats baba run data get storage baba:main previous.repeats
execute if score repeats baba matches ..1 run function baba:board/history/pop
execute if score repeats baba matches 2.. store result entity @s data.history[-1].repeats int 1 run scoreboard players remove repeats baba 1