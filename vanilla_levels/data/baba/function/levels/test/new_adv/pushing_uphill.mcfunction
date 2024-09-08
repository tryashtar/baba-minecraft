# test "Pushing Uphill" in 34 moves
function baba:levels/load/new_adv/pushing_uphill
data modify storage baba:main moves set value [1,1,4,4,0,2,4,1,1,2,4,1,3,1,3,1,4,1,4,2,0,0,0,0,1,1,3,3,3,2,2,2,2,2]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
