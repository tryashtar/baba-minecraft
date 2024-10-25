scoreboard players set loaded_level baba 1
scoreboard players set win baba 0
scoreboard players set steps baba 0
kill @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1]
place template baba:levels/1 64 69 -169
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:booth/demo/load_scores
