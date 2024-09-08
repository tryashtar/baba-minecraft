# test "move2" in 24 moves
function baba:levels/load/tests/move2
data modify storage baba:main moves set value [4,0,2,3,1,4,4,4,2,4,0,1,0,0,4,1,0,0,4,0,0,3,4,0]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
