# test "test behavior" in 28 moves
function baba:levels/load/tests/test_behavior
data modify storage baba:main moves set value [4,4,4,1,4,2,2,2,2,2,2,2,4,2,4,4,4,0,1,4,4,4,4,4,4,4,4,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
