# test "Matrix" in 12 moves
function baba:levels/load/new_adv/matrix
data modify storage baba:main moves set value [4,1,3,3,1,4,2,3,1,4,4,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
