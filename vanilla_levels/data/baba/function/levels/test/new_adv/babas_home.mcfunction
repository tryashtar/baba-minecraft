# test "Baba's home" in 28 moves
function baba:levels/load/new_adv/babas_home
data modify storage baba:main moves set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,3,2,2,2,2,2,2,2,4,4,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
