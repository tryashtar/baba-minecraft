# test "where do i go?" in 19 moves
function baba:levels/load/baba/where_do_i_goq
data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
data modify storage baba:main moves set value [1,3,3,3,3,3,3,3,1,1,1,4,4,2,2,4,4,4,4]
execute positioned 0 1 0 run function baba:editor/load
execute if entity @a[tag=scrub,limit=1] run data modify storage baba:main old_moves set value []
execute unless entity @a[tag=scrub,limit=1] run schedule function baba:levels/automate_step 1t
