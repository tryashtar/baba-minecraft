# test "Bare" in 39 moves
function baba:levels/load/new_adv/bare
data modify storage baba:main moves set value [3,3,1,1,4,4,4,2,4,1,1,1,2,2,2,4,1,1,1,2,2,4,2,4,1,1,1,4,1,3,3,2,3,3,3,1,2,4,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
