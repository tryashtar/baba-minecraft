scoreboard players set @s undo 0
execute if score steps baba matches 1.. run playsound baba:undo master @a 75 74 -162
execute if score steps baba matches 1.. as @e[type=marker,tag=baba.board,limit=1,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] at @s run function baba:board/history/undo
