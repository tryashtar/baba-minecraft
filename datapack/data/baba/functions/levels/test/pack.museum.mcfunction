data modify storage baba:main level_list set value []
data modify storage baba:main moves_list set value []
function baba:levels/load/museum/backstage
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,1,1,4,4,4,4,4,2,2,2,3,2,2,4,4,1,3,1,4,4,3,2,2,4,1,3,1,4,4,3,1,4,1,1,3,3,3,3,3,3,3,3,2,2,3,3,2,2,4,4,0,0,0,0,0,0,0,0,1,4,4,4,1,1,4,2,2,1,3,3,3,3,3,2,3,2,4,4,4,4,4,4,4,3,3,3,2,2,4,4,4,4,4,4,4,4,0,2,1]
function baba:levels/load/museum/shuffle
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,4,2,2,2,2,2,4,1,1,3,3,1,3,3,3,3,3,3,2,4,4,4,4,1,4,2,2,4,2,2,3,1,1,1,1,1,1,3,1,4,4,4,2,2,2,3,3,2,2,2,2,2,2,4,2,2,3,3,3,1,1,1,3]
function baba:levels/load/museum/affection
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,4,4,4,4,2,4,1,1,1,1,3,3,3,3]
function baba:levels/load/museum/dim_signal
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,1,1,1,3,1,4,1,4,2,4,2,1,3,2,2,2,2,3,3,2,2,2,4,4,1,1,4,1,3,1,2,2,3,1,1,3,1,4,4,4,4,2,2,3,1,3,1,4,4,4,2,2,2,2,4,2,3,4,2,2,2,3,1,4,1,3,1,1,1,2,2,2,2,3,1,4,1,1,1,3,1,4,1,1,3,1,4,2,4,1,3,3,1,4,3,2,2,2,2,2,2,1,1,1,3,3,3,0,0,0,0]
function baba:levels/load/museum/babas_are_you
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [3,2,2,2,3,3,3,3,3,1,3,2,4,2,3,4,4,4,4,4,4,2,2,2,4,4,4,4,4,4,2,4,1,3,1,4,1,4,2,2,2,2,2,2,2,2]
function baba:levels/load/museum/secret_garden
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,1,1,1,3,1,3,2,2,3,2,1,4,2,2,4,2,3,3,3,1,4,2,2,3,3,1,2,3,1,3,1,1,1,1,1,1,4,2,2,2,1,1,1,4,2,2,2,3,3,2,4,4,1,4,4,2,1,3,2,2,1,4,4,2,3,3,4,4,4,2,3,3,3,2,3,1,1,4,1,3,1,1,2,2,2,2,2,3,1,1,1,4,2,3,2,4,4,4,4,4,3,3,3,3,3,1,1,1,1,4,2,2,2,3,2,4,4,4,4,4,4,3,3,3,3,3,3,3,1,1,1,1,1,1,1,1,4,2,2,3,2,2,4,2,4,2,2,2,4,4,4,4,4,3,3,3,3,3,3,1,1,1,1,3,1,1,4,3,2,2,2,2,2,2,4,4,4,4,4,4,4,4,2,4,1,1,1,4,1,3,2,3,1,1,1,1,1,4,1,3,2,3,1,3,3,1]
function baba:levels/load/museum/novice_locksmith
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,1,1,1,4,1,3,4,1,1,1,3,2,2,1,1,3,3,2,3,2,4,4,3,3,2,4,3,2,2,4,4,4,2,4,1,3,3,1,4,4,4,4,4,4,4,4,2,4,1,1,3,2,2,2,2,2]
function baba:levels/load/museum/even_less_there
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,1,1,1,4,2,3,2,4,4,4,4,1,1,3,2,2,1,1,4,4,2,2,2,2,4,2,3,3,4,4,2,3,3,2,2,2,2,2,2,3,2,3,1,1,1,1,1,1,1,3,1,4,4,2,4,4,1,3,4,1,1,4,1,3,3]
function baba:levels/load/museum/tunnel
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [3,3,3,2,2,3,1,2,3,1,3,1,4,4,4,1,1,3,2,1,3,2,2,2,2,1,1,4,4,1,4,2,4,1,4,4,2,1,3,2,3,3,2,2,3,3,3,3,2,4,4,3,2,2,2,4,4,2,4,1,2,4,1,3,3,1,4,4,2,2,4,1,1,4,4,3,3,1,1,1,1,1,4,2,2,1,1,1,1,3,2,2,2,2,1,1,3,1,4,4,4,4,4,2,2,2,2,4,4,4,4,4,4,2,2,4,4,2,3,2,3,1,1,1,1,1,2,2,4,4,4,4,2,2,3,3,3,3,2,3,1,1,1,1,1,3,1,4,4,4,4,4,4,1,1,1,2,2,2,3,3,3,3,3,3,3,3,3,2,2,2,3,3,3,3,3,3,3,3,3,2,2,2]
function baba:levels/load/museum/tunnel_vision
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,1,1,1,1,3,1,1,4,4,1,4,4,4,1,1,1,2,4,1,1,3,4,4,1,3,3,4,4,4,2,2,2,2,2,2,4,4,4,2,2,2,4,4,4,4,4]
function baba:levels/load/museum/lonely_sight
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,2,2,2,2,4,1,4,2,2,4,2,3,3,3,3,3,2,3,3,1,1,1,4,2,2,4,2,3,3,3,1,1,2,2,3,3,2,3,1,3,1,1,4,4,4,1,3,3,1,3,2,2,3,2,4,0,0,0,0,4,3,3,3,2,4,4,2,4,2,2]
function baba:levels/load/museum/telephone
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [2,4,4,4,4,4,4,4,4,2,3,1,2,3,3,2,2,4,1,2,3,3,3,1,3,1,4,1,1,1,1,4,4,4,4,2,3,2,2,2,1,1,1,4,4,4,4,4,4,4,4]
function baba:levels/load/museum/wireless_connection
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,1,1,1,3,1,4,1,4,2,2,2,2,2,3,3,2,2,2,4,4,3,1,4,2,4,1,1,1,3,1,4,4,1,3,1,4,1,3,4,4,4,2,2,2,2,2,2,3,1,1,1,4,1,3,1,3,3,3,3,2,2,0,0,0,0,0,0]
function baba:levels/load/museum/mouse_hole
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [2,2,3,1,1,1,3,2,2,3,2,4,1,1,3,1,4,4,4,4,2,1,3,2,4,2,3,1,3,2,4,2,3,1,3,2,4,2,4,2,3,3,1,3,4,4,1,3,3,1,3,2,2,4,2,4,2,3,3,2,3,3,1,2,4,4,1,3,2,3,1,1,1,1,1,2,2,2,2,4,4,4,4,1,4,4,2,3,3,3,3,3,2,3,1,1,1,1,1,2,2,2,2,3,2,4,4,2,4,1,1,1]
function baba:levels/load/museum/endless_corridor
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [3,1,1,1,1,4,2,4,1,3,1,4,1,4,2,2,4,4,1,1,1,1,1,3,1,3,2,2,3,3,2,4,4,1,4,2,1,4,2,1,3,3,3,3,3,3,3,2,2,0,4,0,1]
function baba:levels/load/museum/tour
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,4,4,4,2,3,3,3,3,3,3,3,3,2,2,3,2,2,4,4,2,4,1,0,3,0,3,0,3,0,1,0,4,0,4,2,2,4,4,4,4,4,4,4,4,4,2,2,3,3,3,3,3,3,3,3,2,2,2,2,3,1,1,2,2,3,1,1,3,1,0,4,4,4,4,4,1,4,4,2,1,3,3,2,4,1,4,0,2,2,1,0,3,3,3,3,3,3]
function baba:levels/load/museum/multitool
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [3,1,1,1,1,2,2,2,2,2,4,4,4,4,4,4,4,2,4,1,4,4,1,1,1,3,2,2,1,1,3,2,2,4,4,2,3,3,3,3,3,3,3,2,3,3,3,3,1,4,4,4,4,4,4,4,1,4,4,4,2,3,2,3,1,3,1,4,4,1,4,2,2,2,1,3,3,3,3,3,3,3,3,2,3,1,1,1,1,1,2,2,2,2,4,4,4,4,4,4,4,4,4,2,2,2,2,2]
function baba:levels/load/museum/icy_waters
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [2,2,2,4,4,4,4,4,2,2,2,1,4,4,4,4,4,4,1,1,1,1,1,3,1,4,4,4,4,4,4,4]
function baba:levels/load/museum/condition
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,1,1,3,3,1,1,1,1,3,3,1,4,4,4,1,4,4,2,1,3,2,2,3,2,4,4,3,1,4,1,1,4,4,2,2,2,4,2,3,4,2,3,2,3,2,2,2,2,4,4,4,1,1,3,4,4,4,4,4,4,2,2]
function baba:levels/load/museum/toolshed
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [1,1,4,4,4,2,1,4,2,1,4,4,4,4,4,1,1,1,1,3,2,2,4,2,2,3,4,2,2,3,1,4,1,3,3,3,3,3,3,3,1,3,2,3,4,4,2,3,3,2,3,1,1,4,1,1,2,2,2,2,2,4,4,4,2,4,1,1,1,1,2,2,2,3,1,1,1,1,1,2,4,1,4,1,3,3,3,2,2,4,4,4,4,4,4,4,4,4,4,1,4,2,3,2,4,3,3,3,3,3,3]
function baba:levels/load/museum/nearly
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [3,3,3,3,2,4,4,4,4,4,4,1]
function baba:levels/load/museum/catch_the_thief
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,4,2,2,2,2,2,2,2,4,4,2,2,4,0,0,0,0,0,0,1,2,4,1,2,4,1,4,1,3,3,3,3,1,3,3,3,3,2,2,4,1,3,1,4,2,4,1,4,2,1,4,2,1,1,0,3,3,1,1,3,3,3,3,3,2,4,4,4,4,4,4,0,2,4,1,0,4,2,2,2,2]
function baba:levels/load/museum/canyon
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,2,4,4,4,4,4,4,4,4,1,1,3,1,4,4,1,4,2,2,1,3,2,2,4,1,4,2,4,2,3,3,3,3,3,3,3,3,3,3,3,3,2,3,1,1,3,2,4,2,3,2,3,1,1,1,1,2,2,4,4,4,4,4,4,4,4,4,4,1,4,2,2,2,2,2,2,1,1,1,1,1,3,3,3,3,3,3,3,3,1,4,1,3,3,3,3,2,3,3,1,1,3,1,4,1,4,4,2,4,2,3,4,2,3,3,1,3,1,4,2,4,1,2]
function baba:levels/load/museum/locked_in
data modify storage baba:main level_list append from storage baba:main level
data modify storage baba:main moves_list append value [4,4,4,2,2,2,2,2,2,3,3,1,1,3,1,4,4,4,4,2,4,1,1,4,1,3,3,3,3,3,3,3,3,3,3,3,2,4,2,3,4,4,4,4]
data modify storage baba:main level set from storage baba:main level_list[0]
data modify storage baba:main moves set from storage baba:main moves_list[0]
data remove storage baba:main level_list[0]
data remove storage baba:main moves_list[0]
execute positioned 0 1 0 run function baba:editor/load
schedule function baba:levels/automate_step 1t
