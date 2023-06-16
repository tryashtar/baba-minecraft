function baba:levels/257level
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [4,4,1,3,2,3,1,1,4,2,3,1,1,4,2,4,4,1,3]
execute positioned 0 1 0 run function baba:editor/load
schedule function baba:levels/testing/automate 1t
