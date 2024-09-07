scoreboard players set @s undo 0
item replace entity @s weapon.mainhand with diamond
kill @e[type=item,distance=..2]
execute if score steps baba matches 1.. as @e[type=marker,tag=baba.board,sort=nearest,limit=1] at @s run function baba:board/history/undo
execute as @a at @s run playsound baba:undo master @s
