scoreboard players set win baba 0
scoreboard players set steps baba 0
kill @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1]
place template baba:levels/map 64 69 -169
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:booth/demo/load_scores
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1,scores={sprite=6491892}] at @s run function baba:booth/demo/level_progress

execute if entity @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40,limit=1,tag=baba_beat_main] run function baba:booth/demo/open_gate
