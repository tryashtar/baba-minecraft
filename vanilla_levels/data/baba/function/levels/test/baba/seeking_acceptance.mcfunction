# test "seeking acceptance" in 155 moves
function baba:levels/load/baba/seeking_acceptance
data modify storage baba:main moves set value [3,1,1,4,2,4,1,1,1,0,1,2,2,2,2,3,4,3,2,4,4,4,4,4,1,1,4,4,4,4,4,4,1,4,4,2,4,2,3,3,2,2,4,1,3,1,0,0,3,3,1,4,4,4,3,2,3,3,3,3,3,3,0,3,2,2,4,1,4,1,0,0,3,2,2,2,4,1,1,2,4,1,3,3,1,0,0,0,0,0,0,0,0,3,1,2,1,1,1,1,1,1,4,0,0,0,3,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,1,2,1,1,1,3,0,4,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
