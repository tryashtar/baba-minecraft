# test "baba is you" in 8 moves
function baba:levels/load/baba/baba_is_you
data modify storage baba:main moves set value [4,4,4,4,4,4,4,4]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
