# test "open12" in 3 moves
function baba:levels/load/tests/open12
data modify storage baba:main moves set value [4,4,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
