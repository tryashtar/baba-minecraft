data modify storage baba:main consume set value []
data modify storage baba:main consume append from storage baba:main properties[{property:"you"}]
scoreboard players set can_move baba 0
function baba:check_can_move
execute if score can_move baba matches 1 if score direction baba matches 0 run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~
execute if score can_move baba matches 1 if score direction baba matches 1 run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1
execute if score can_move baba matches 1 if score direction baba matches 2 run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1
execute if score can_move baba matches 1 if score direction baba matches 3 run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~
execute if score can_move baba matches 1 run data modify block ~ ~ ~ RecordItem.tag set value {}
