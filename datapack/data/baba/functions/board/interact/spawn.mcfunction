# spawn objects in 'spawn' storage as markers
# used by 'has' verb
data modify storage baba:main spawn set from storage baba:main spawn[0]
# when spawning text, you spawn text of your own kind
execute if data storage baba:main {spawn:"text"} run data modify storage baba:main spawn_text set from entity @s data.sprite
function baba:board/spawn
scoreboard players operation @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
execute if data storage baba:main spawn[0] run function baba:board/interact/spawn
