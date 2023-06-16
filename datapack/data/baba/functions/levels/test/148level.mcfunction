function baba:levels/148level
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [1,4,4,4,2,3,3,3,3,3,3,3,3,2,2,3,2,2,4,4,2,4,1,0,3,0,3,0,3,0,1,0,4,0,4,2,2,4,4,4,4,4,4,4,4,4,2,2,3,3,3,3,3,3,3,3,2,2,2,2,3,1,1,2,2,3,1,1,3,1,0,4,4,4,4,4,1,4,4,2,1,3,3,2,4,1,4,0,2,2,1,0,3,3,3,3,3,3]
execute positioned 0 1 0 run function baba:editor/load
schedule function baba:levels/testing/automate 1t
