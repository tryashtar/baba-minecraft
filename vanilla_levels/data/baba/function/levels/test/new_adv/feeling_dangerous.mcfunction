# test "Feeling dangerous" in 26 moves
function baba:levels/load/new_adv/feeling_dangerous
data modify storage baba:main moves set value [2,4,4,2,3,3,1,3,2,2,3,2,4,2,4,1,3,3,3,2,2,4,3,2,2,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
