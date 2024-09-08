# test "parade" in 77 moves
function baba:levels/load/baba/parade
data modify storage baba:main moves set value [3,2,2,2,4,1,1,3,1,4,4,2,2,4,1,2,4,4,1,3,2,3,1,1,4,4,4,2,4,1,4,1,1,3,3,3,4,4,2,4,2,3,3,3,3,2,3,1,1,1,2,4,1,4,1,3,2,3,1,1,1,4,1,3,3,4,2,2,2,2,2,2,2,2,2,2,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
