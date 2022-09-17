data modify storage baba:main tile set from storage baba:main consume[0][0]
scoreboard players set can_move baba 0
function baba:check_properties
data remove storage baba:main consume[0][0]
execute if data storage baba:main consume[0][0] run function baba:move_loop
