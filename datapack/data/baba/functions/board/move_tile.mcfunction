data modify storage baba:main consume set value []
data modify storage baba:main consume append from storage baba:main properties[{property:"you"}]
scoreboard players set can_move baba 0
function baba:board/check_can_move
execute if score can_move baba matches 1 if score direction baba matches 0 rotated 90 0 run function baba:board/do_move
execute if score can_move baba matches 1 if score direction baba matches 1 rotated 180 0 run function baba:board/do_move
execute if score can_move baba matches 1 if score direction baba matches 2 rotated 0 0 run function baba:board/do_move
execute if score can_move baba matches 1 if score direction baba matches 3 rotated 270 0 run function baba:board/do_move
