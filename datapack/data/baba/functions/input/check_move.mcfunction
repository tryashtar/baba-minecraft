execute if entity @s[predicate=baba:sneaking] run function baba:input/wait
execute if entity @s[predicate=!baba:sneaking,y=3.8,dy=3] run function baba:input/undo
execute if entity @s[predicate=!baba:sneaking,x=-1.199,z=0,dz=6] run function baba:input/move/up
execute if entity @s[predicate=!baba:sneaking,x=-2.801,z=0,dz=6] run function baba:input/move/down
execute if entity @s[predicate=!baba:sneaking,z=2.81,x=-3,dx=3] run function baba:input/move/right
execute if entity @s[predicate=!baba:sneaking,z=1.199,x=-3,dx=3] run function baba:input/move/left
