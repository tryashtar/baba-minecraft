scoreboard players set @s drop 0
item replace entity @s weapon.mainhand with diamond
kill @e[type=item,distance=..2]
function baba:board/history/undo
execute as @a at @s run playsound baba:undo master @s
