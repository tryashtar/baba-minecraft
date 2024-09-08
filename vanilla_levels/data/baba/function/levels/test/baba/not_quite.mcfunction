# test "not quite" in 19 moves
function baba:levels/load/baba/not_quite
data modify storage baba:main moves set value [4,4,1,3,2,3,1,1,4,2,3,1,1,4,2,4,4,1,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
