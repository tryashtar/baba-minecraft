# test "tour" in 98 moves
function baba:levels/load/baba/tour
data modify storage baba:main moves set value [1,4,4,4,2,3,3,3,3,3,3,3,3,2,2,3,2,2,4,4,2,4,1,0,3,0,3,0,3,0,1,0,4,0,4,2,2,4,4,4,4,4,4,4,4,4,2,2,3,3,3,3,3,3,3,3,2,2,2,2,3,1,1,2,2,3,1,1,3,1,0,4,4,4,4,4,1,4,4,2,1,3,3,2,4,1,4,0,2,2,1,0,3,3,3,3,3,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
