# test "crushers" in 16 moves
function baba:levels/load/baba/crushers
data modify storage baba:main moves set value [1,1,2,3,3,3,3,1,1,1,1,3,3,3,3,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
