# test "parsing6" in 7 moves
function baba:levels/load/tests/parsing6
data modify storage baba:main moves set value [4,4,2,2,3,1,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
