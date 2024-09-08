# test "Musical interlude" in 10 moves
function baba:levels/load/new_adv/musical_interlude
data modify storage baba:main moves set value [3,3,3,3,3,3,3,3,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
