# test "Baba Hour" in 116 moves
function baba:levels/load/new_adv/baba_hour
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [1,1,1,1,3,3,3,3,3,3,0,4,0,1,0,4,0,2,2,0,1,0,2,2,0,1,0,3,3,0,4,4,0,1,0,2,0,4,0,1,1,0,1,3,3,0,4,4,0,4,2,0,1,0,2,4,0,3,0,4,1,0,2,0,4,0,3,0,1,4,0,2,0,1,0,2,0,3,1,0,4,0,2,3,0,1,0,2,3,0,4,4,0,4,1,0,2,0,4,1,0,3,0,4,2,0,1,0,2,3,0,4,4,4,4,3]
execute positioned 0 1 0 run function baba:editor/load
execute if entity @a[tag=scrub,limit=1] run data modify storage baba:main old_moves set value []
execute unless entity @a[tag=scrub,limit=1] run schedule function baba:levels/automate_step 1t
