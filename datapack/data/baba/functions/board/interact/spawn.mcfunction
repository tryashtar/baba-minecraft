# spawn objects in 'spawn' storage as markers
# used by 'has' verb
execute store result score spawn baba run data get storage baba:main spawn[0]
# when spawning text, you spawn text of your own kind
scoreboard players operation spawn_text baba = @s sprite
function baba:board/spawn
scoreboard players operation @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=armor_stand,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
execute if data storage baba:main spawn[0] run function baba:board/interact/spawn
