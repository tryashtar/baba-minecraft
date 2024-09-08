# test "What does baba eat?" in 27 moves
function baba:levels/load/new_adv/what_does_baba_eatq
data modify storage baba:main moves set value [1,1,2,4,1,3,3,1,4,4,4,4,1,4,4,4,4,4,4,2,3,2,2,3,3,1,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
