# test "hidden relic" in 58 moves
function baba:levels/load/baba/hidden_relic
data modify storage baba:main moves set value [4,4,4,1,1,1,3,3,4,4,4,2,0,3,3,2,2,3,3,3,0,1,4,4,1,0,4,1,3,2,1,4,2,0,4,2,3,2,3,3,3,3,2,2,2,2,2,2,4,4,4,4,1,1,1,3,3,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
