# test "Advanced linguistics 1" in 29 moves
function baba:levels/load/new_adv/advanced_linguistics_1
data modify storage baba:main moves set value [2,2,4,4,2,4,1,4,4,2,4,1,1,1,4,1,3,1,3,3,4,2,0,4,0,4,4,1,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
