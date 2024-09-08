# test "horror story" in 25 moves
function baba:levels/load/baba/horror_story
data modify storage baba:main moves set value [2,3,3,1,3,1,4,4,4,4,4,4,2,2,4,4,4,2,4,4,2,4,4,4,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
