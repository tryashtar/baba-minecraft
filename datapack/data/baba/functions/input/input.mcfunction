# even a player continuously moving will not trigger this check every tick
# if the skipped tick coincides with the move cooldown ending, the result is slow movement
# so we remember the input for a couple ticks
execute unless entity @e[type=marker,tag=baba.input,tag=last_pos,distance=..0.00001,limit=1] run tag @e[type=marker,tag=baba.input,tag=dir,sort=nearest,limit=1] add chosen
execute if entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] at @e[type=marker,tag=baba.input,tag=last_pos,distance=..1] run tp @s ~ ~ ~
execute if entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] run tp @s @s
execute if entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] run scoreboard players set @s buffer 2
execute if entity @e[type=marker,tag=baba.input,tag=chosen,tag=up,limit=1] run scoreboard players set @s facing 1
execute if entity @e[type=marker,tag=baba.input,tag=chosen,tag=down,limit=1] run scoreboard players set @s facing 2
execute if entity @e[type=marker,tag=baba.input,tag=chosen,tag=left,limit=1] run scoreboard players set @s facing 3
execute if entity @e[type=marker,tag=baba.input,tag=chosen,tag=right,limit=1] run scoreboard players set @s facing 4
execute unless entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] if score @s buffer matches 0 run scoreboard players set @s facing 0
execute if entity @s[scores={drop=0,move_cooldown=0,win=0,facing=1..}] run function baba:input/move
tag @s[tag=consume_wait,predicate=!baba:sneaking] remove consume_wait
execute if entity @s[tag=!consume_wait,scores={drop=0,move_cooldown=0,win=0,facing=0},predicate=baba:sneaking] unless entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] run function baba:input/wait
execute if entity @s[scores={drop=1..,win=0}] run function baba:input/undo
tag @e[type=marker,tag=baba.input,tag=chosen] remove chosen
scoreboard players remove @s[scores={move_cooldown=1..}] move_cooldown 1
scoreboard players remove @s[scores={buffer=1..}] buffer 1
