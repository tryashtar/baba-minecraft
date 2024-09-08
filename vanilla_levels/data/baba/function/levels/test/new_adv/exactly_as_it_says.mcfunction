# test "Exactly as it says" in 36 moves
function baba:levels/load/new_adv/exactly_as_it_says
data modify storage baba:main moves set value [2,4,4,1,1,1,1,1,3,1,4,4,4,4,4,4,4,4,4,2,3,3,2,1,3,3,3,3,3,2,3,2,2,2,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
