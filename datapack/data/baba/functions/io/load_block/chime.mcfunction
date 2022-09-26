execute if block ~ ~ ~ note_block[note=0] run summon marker ~ 1 ~ {Tags:["baba.object","spawn"],data:{sprite:"ufo"}}
execute if block ~ ~ ~ note_block[note=0] run scoreboard players set @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] facing 4
execute if block ~ ~ ~ note_block[note=0] run tag @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] remove spawn
execute if block ~ ~ ~ note_block[note=1] run summon marker ~ 1 ~ {Tags:["baba.object","connector","spawn"],data:{sprite:"wall"}}
execute if block ~ ~ ~ note_block[note=1] run scoreboard players set @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] facing 4
execute if block ~ ~ ~ note_block[note=1] run tag @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] remove spawn
execute if block ~ ~ ~ note_block[note=2] run summon marker ~ 1 ~ {Tags:["baba.object","connector","spawn"],data:{sprite:"water"}}
execute if block ~ ~ ~ note_block[note=2] run scoreboard players set @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] facing 4
execute if block ~ ~ ~ note_block[note=2] run tag @e[type=marker,tag=spawn,y=1,distance=..0.1,limit=1] remove spawn
