# test "No duplicates" in 12 moves
function baba:levels/load/new_adv/no_duplicates
data modify storage baba:main moves set value [1,1,4,4,4,4,2,2,2,4,1,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
