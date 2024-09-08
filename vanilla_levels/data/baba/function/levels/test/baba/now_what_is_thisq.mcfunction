# test "now what is this?" in 22 moves
function baba:levels/load/baba/now_what_is_thisq
data modify storage baba:main moves set value [2,3,3,3,1,1,1,1,1,1,3,1,4,2,4,1,3,3,1,4,3,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
