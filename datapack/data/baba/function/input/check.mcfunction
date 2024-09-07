tag @s remove should_input
tag @s[gamemode=!spectator,predicate=baba:player/inputting] add should_input
execute if entity @s[tag=should_input,tag=!inputting] run function baba:input/setup
execute if entity @s[tag=!should_input,tag=inputting] run function baba:input/stop
execute if entity @s[tag=inputting] run function baba:input/input
