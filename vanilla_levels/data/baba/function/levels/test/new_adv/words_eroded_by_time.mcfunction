# test "Words eroded by time" in 51 moves
function baba:levels/load/new_adv/words_eroded_by_time
data modify storage baba:main moves set value [4,2,2,2,2,1,1,1,3,1,4,4,4,3,2,4,2,4,1,1,3,1,1,1,4,4,1,0,0,0,0,0,1,4,2,2,2,3,3,4,4,2,3,3,1,1,3,2,2,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
