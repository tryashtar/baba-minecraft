execute store result score sprite baba run data get storage baba:main spawn[0].text
# when making text, you make text of your own kind
scoreboard players operation text baba = @s sprite
execute unless entity @e[type=#baba:object,tag=baba.object,predicate=baba:match_score/sprite,distance=..0.1,limit=1] run function baba:board/spawn
tag @e[type=#baba:object,tag=baba.object,tag=assign_move,distance=..1.5] add assign
scoreboard players operation @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] facing = @s facing
tag @e[type=item_display,tag=baba.object,tag=spawn,distance=..0.1,limit=1] remove spawn
data remove storage baba:main spawn[0]
execute if data storage baba:main spawn[0] run function baba:board/interact/make_loop
