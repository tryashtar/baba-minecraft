# test "move1" in 3 moves
function baba:levels/load/tests/move1
data modify storage baba:main moves set value [0,0,0]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
