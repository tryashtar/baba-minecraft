# test "icy waters" in 32 moves
function baba:levels/load/baba/icy_waters
data modify storage baba:main moves set value [2,2,2,4,4,4,4,4,2,2,2,1,4,4,4,4,4,4,1,1,1,1,1,3,1,4,4,4,4,4,4,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
