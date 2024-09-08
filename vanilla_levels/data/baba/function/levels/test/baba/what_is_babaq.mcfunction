# test "what is baba?" in 60 moves
function baba:levels/load/baba/what_is_babaq
data modify storage baba:main moves set value [4,4,4,4,4,2,2,0,0,0,0,0,0,0,3,3,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,1,1,4,1,1,1,4,1,3,3,2,2,2,2,2,2,2,2,3,3,1,4,4,4,3]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
