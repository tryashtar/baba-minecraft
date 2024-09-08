# test "empty" in 17 moves
function baba:levels/load/baba/empty
data modify storage baba:main moves set value [1,1,1,1,2,2,4,1,1,3,3,1,4,4,4,4,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
