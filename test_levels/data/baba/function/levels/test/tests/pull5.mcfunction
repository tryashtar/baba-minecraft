# test "pull5" in 22 moves
function baba:levels/load/tests/pull5
data modify storage baba:main moves set value [4,4,2,2,4,1,1,1,3,2,3,2,3,2,3,1,3,2,4,2,3,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
