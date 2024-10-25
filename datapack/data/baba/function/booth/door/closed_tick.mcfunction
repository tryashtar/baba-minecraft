# even when the door is closed, let people exit (it's invisible from behind)
execute if block 78 75 -148 barrier if entity @a[x=74.0,y=74.0,z=-153.0,dx=8,dy=4,dz=5,limit=1] run fill 79 74 -148 77 76 -148 air
execute unless block 78 75 -148 barrier unless entity @a[x=74.0,y=74.0,z=-153.0,dx=8,dy=4,dz=5,limit=1] run fill 79 74 -148 77 76 -148 barrier

# bring key to door to open it
execute as @e[type=pig,tag=baba_key,x=78.5,y=74.0,z=-146.5,distance=..1,limit=1] run function baba:booth/door/open
# don't let the key get too far away
execute as @e[type=pig,tag=baba_key,x=78,y=74,z=-139,distance=10..40,limit=1] at @s run function baba:booth/door/key_return
