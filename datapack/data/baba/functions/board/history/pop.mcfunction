execute if data entity @s data.history[-2] run data remove entity @s data.history[-1]
data modify storage baba:main previous set from entity @s data.history[-1]
kill @e[type=marker,tag=baba.object,distance=..0.1]
execute if data storage baba:main previous.objects[0] run function baba:board/history/spawn
