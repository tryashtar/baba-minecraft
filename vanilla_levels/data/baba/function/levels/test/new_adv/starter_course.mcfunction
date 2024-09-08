# test "Starter course" in 11 moves
function baba:levels/load/new_adv/starter_course
data modify storage baba:main moves set value [2,2,4,1,1,3,1,4,3,1,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
