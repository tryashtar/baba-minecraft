# not the same as blocker, 'more' does not spread onto objects that are both weak and stop
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.stop,distance=..0.1,limit=1] run return fail
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.push,distance=..0.1,limit=1] run return fail
execute if entity @e[type=#baba:object,tag=baba.object,tag=active,tag=prop.pull,distance=..0.1,limit=1] run return fail
execute if entity @s[tag=is_text] if entity @e[type=#baba:object,tag=baba.object,tag=active,predicate=baba:match_score/sprite,predicate=baba:match_score/text,distance=..0.1,limit=1] run return fail
execute if entity @s[tag=!is_text] if entity @e[type=#baba:object,tag=baba.object,tag=active,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run return fail
function baba:board/spawn
tag @e[type=#baba:object,tag=baba.object,tag=active,tag=assign_move,distance=..1.5] add assign
scoreboard players operation @e[type=item_display,tag=baba.object,tag=active,tag=spawn,distance=..0.1,limit=1] facing = @s facing
scoreboard players operation @e[type=item_display,tag=baba.object,tag=active,tag=spawn,distance=..0.1,limit=1] walk = @s walk
scoreboard players operation @e[type=item_display,tag=baba.object,tag=active,tag=spawn,distance=..0.1,limit=1] frame = @s frame
tag @e[type=item_display,tag=baba.object,tag=active,tag=spawn,distance=..0.1,limit=1] remove spawn
