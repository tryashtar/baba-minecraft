# spawn objects in 'spawn' storage as markers
# used by 'has' verb
data modify storage baba:main do_spawn set from storage baba:main spawn[0]
summon marker ~ ~ ~ {Tags:["baba.object","spawn"]}
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] = @s facing
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main do_spawn
# when spawning text, you spawn text of your own kind
execute if data storage baba:main {do_spawn:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from entity @s data.sprite
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
execute if data storage baba:main spawn[0] run function baba:board/interact/spawn
