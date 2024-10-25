scoreboard players set loaded_level baba 10
scoreboard players set win baba 0
scoreboard players set steps baba 0
kill @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1]
place template baba:levels/10 64 69 -169
execute as @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:booth/demo/load_scores
data modify entity @e[type=marker,tag=baba.board,x=63,y=68,z=-166,distance=..5,limit=1] data.palette.words.property append value 6257
data modify entity @e[type=marker,tag=baba.board,x=63,y=68,z=-166,distance=..5,limit=1] data.palette.words.not append value 10631
