# test "warm river" in 22 moves
function baba:levels/load/baba/warm_river
data modify storage baba:main moves set value [2,3,3,2,3,1,1,1,1,1,2,2,2,2,4,1,1,4,4,4,4,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
