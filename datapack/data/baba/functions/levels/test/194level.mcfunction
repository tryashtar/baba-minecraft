function baba:levels/194level
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [4,1,1,1,1,4,1,3,3,4,4,4,2,2,2,2,3,2,2,4,4,4,1,3,3,2,3,1,1,1,1,1,1,1,1,1,2,2,3,3,1,3,1,3,1,4,4,2,2,2,2,3,3,2,3,3,3,3,3,3,3,2,2,2]
execute positioned 0 1 0 run function baba:editor/load
execute if entity @a[tag=scrub,limit=1] run data modify storage baba:main old_moves set value []
execute unless entity @a[tag=scrub,limit=1] run schedule function baba:levels/testing/automate 1t
