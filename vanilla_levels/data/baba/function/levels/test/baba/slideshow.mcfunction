# test "slideshow" in 18 moves
function baba:levels/load/baba/slideshow
data modify storage baba:main moves set value [3,3,2,2,2,2,2,4,1,1,1,1,1,1,1,1,1,1]
execute positioned 0 1 0 run function baba:dev/tests/load
schedule function baba:dev/tests/automate_step_schedule 1t
