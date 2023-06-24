data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
function baba:levels/load/tests/test_behavior
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,1,4,2,2,2,2,2,2,2,4,2,4,4,4,0,1,4,4,4,4,4,4,4,4,4]
data modify storage baba:main level set from storage baba:main level_list[0]
data modify storage baba:main moves set from storage baba:main moves_list[0]
data remove storage baba:main level_list[0]
data remove storage baba:main moves_list[0]
execute positioned 0 1 0 run function baba:editor/load
schedule function baba:levels/automate_step 1t
