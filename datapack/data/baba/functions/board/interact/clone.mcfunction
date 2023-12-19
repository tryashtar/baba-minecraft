# not the same as blocker, 'more' does not spread onto objects that are both weak and stop
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.stop,distance=..0.1,limit=1] run return fail
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.push,distance=..0.1,limit=1] run return fail
execute if entity @e[type=#baba:object,tag=baba.object,tag=prop.pull,distance=..0.1,limit=1] run return fail
execute if entity @e[type=#baba:object,tag=baba.object,predicate=baba:same_sprite,distance=..0.1,limit=1] return fail
function baba:board/spawn
tag @e[type=#baba:object,tag=baba.object,tag=assign_move,distance=..1.5] add assign
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] remove spawn
