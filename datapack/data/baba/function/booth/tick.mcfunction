execute if score door_status baba matches 0 as @e[type=pig,tag=baba_key,x=78.5,y=74.0,z=-146.5,distance=..1,limit=1] run function baba:booth/door_open
execute if score door_status baba matches 0 as @e[type=pig,tag=baba_key,x=78,y=74,z=-139,distance=10..40,limit=1] at @s run function baba:booth/key_return
#execute if score door_status baba matches 0 if entity @a[x=74.0,y=74.0,z=-152.0,dx=8,dy=4,dz=5,limit=1] run function baba:booth/door_exit
#execute if score door_status baba matches 2 unless entity @a[x=74.0,y=74.0,z=-152.0,dx=8,dy=4,dz=5,limit=1] run function baba:booth/door_restore
execute if score door_status baba matches 1 unless entity @a[x=78.5,y=74.0,z=-148.5,distance=..10,limit=1] run function baba:booth/door_close
