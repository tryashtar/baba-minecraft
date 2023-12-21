# test "pull4" in 5 moves
function baba:levels/load/tests/pull4
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [4,2,3,2,2]
execute positioned 0 1 0 run function baba:editor/load
execute if entity @a[tag=scrub,limit=1] run data modify storage baba:main old_moves set value []
execute unless entity @a[tag=scrub,limit=1] run schedule function baba:levels/automate_step 1t
