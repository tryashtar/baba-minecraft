tp @s -1.5 2 2.5 -90 90
function baba:board/properties/update
scoreboard players set direction baba 1
function baba:board/step
scoreboard players set direction baba 0
