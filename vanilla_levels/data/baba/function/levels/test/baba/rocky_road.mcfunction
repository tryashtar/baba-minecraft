# test "rocky road" in 24 moves
function baba:levels/load/baba/rocky_road
data modify storage baba:main moves set value [4,1,1,3,3,2,3,3,3,1,4,4,1,0,2,0,2,0,2,2,0,2,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
