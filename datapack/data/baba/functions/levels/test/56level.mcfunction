function baba:levels/56level
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [2,4,4,4,4,4,4,4,2,4,1,3,1,4,2,2,4,1,2,4,4,1,3,2,3,1,1,1,1,4,1,1,3,3,1,4,4,2,2,3,3,2,3,1,1,2,2,2,2,2,4,1,1,1,1,3,1,4,4,4,2,4,1,1,1,1,1,1,4,1,3,3,4,4,1,3,3]
execute positioned 0 1 0 run function baba:editor/load
schedule function baba:levels/testing/automate 1t
