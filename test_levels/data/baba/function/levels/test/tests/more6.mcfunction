# test "more6" in 4 moves
function baba:levels/load/tests/more6
data modify storage baba:main moves set value [2,2,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
