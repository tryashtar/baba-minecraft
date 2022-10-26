execute unless entity @e[type=marker,tag=baba.input,tag=last_pos,distance=..0.0001,limit=1] run tag @e[type=marker,tag=baba.input,tag=dir,sort=nearest,limit=1] add chosen
execute if entity @s[predicate=baba:sneaking] run function baba:input/wait
execute if entity @s[predicate=!baba:sneaking,scores={drop=1..}] run function baba:input/undo
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,tag=up,limit=1] run function baba:input/move/up
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,tag=down,limit=1] run function baba:input/move/down
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,tag=right,limit=1] run function baba:input/move/right
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,tag=left,limit=1] run function baba:input/move/left
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] at @e[type=marker,tag=baba.input,tag=last_pos,distance=..1] run tp @s ~ ~ ~
execute if entity @s[predicate=!baba:sneaking,x=0,y=9,z=0,dx=16,dy=5,dz=32] if entity @e[type=marker,tag=baba.input,tag=chosen,limit=1] run tp @s @s
kill @e[type=marker,tag=baba.input]
execute at @s run summon marker ~ ~ ~ {Tags:["baba.input","last_pos"]}
execute at @s run summon marker ~1 ~ ~ {Tags:["baba.input","dir","up"]}
execute at @s run summon marker ~-1 ~ ~ {Tags:["baba.input","dir","down"]}
execute at @s run summon marker ~ ~ ~-1 {Tags:["baba.input","dir","left"]}
execute at @s run summon marker ~ ~ ~1 {Tags:["baba.input","dir","right"]}
