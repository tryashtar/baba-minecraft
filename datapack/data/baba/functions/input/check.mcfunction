execute if entity @s[predicate=baba:sneaking] run function baba:input/wait
execute if entity @s[predicate=!baba:sneaking,x=-1.5,y=3.8,z=2.5,dy=3,distance=..3] run function baba:input/undo
execute if entity @s[predicate=!baba:sneaking,x=-1.199,y=2,z=0,dz=6,distance=..3] run function baba:input/move/up
execute if entity @s[predicate=!baba:sneaking,x=-2.801,y=2,z=0,dz=6,distance=..3] run function baba:input/move/down
execute if entity @s[predicate=!baba:sneaking,x=-3,y=2,z=2.81,dx=3,distance=..3] run function baba:input/move/right
execute if entity @s[predicate=!baba:sneaking,x=-3,y=2,z=1.199,dx=3,distance=..3] run function baba:input/move/left
