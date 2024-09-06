tag @s remove should_input
tag @s[gamemode=!spectator,predicate=baba:player/on_ground,x=0,y=1,z=0,dx=17,dy=20,dz=32] add should_input
execute if entity @s[tag=should_input,tag=!inputting] run function baba:input/setup
execute if entity @s[tag=!should_input,tag=inputting] run function baba:input/stop
execute if entity @s[tag=inputting] run function baba:input/input
