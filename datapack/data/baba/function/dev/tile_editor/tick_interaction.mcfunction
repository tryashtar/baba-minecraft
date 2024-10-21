execute if entity @s[tag=interact_color,nbt={attack:{}}] run function baba:dev/tile_editor/menu/color
execute if entity @s[tag=interact_color,nbt={interaction:{}}] run function baba:dev/tile_editor/menu/color
execute if entity @s[tag=interact_number,nbt={attack:{}}] run function baba:dev/tile_editor/menu/number
execute if entity @s[tag=interact_number,nbt={interaction:{}}] run function baba:dev/tile_editor/menu/number
execute if entity @s[tag=interact_link,nbt={attack:{}}] run function baba:dev/tile_editor/menu/link
execute if entity @s[tag=interact_link,nbt={interaction:{}}] run function baba:dev/tile_editor/menu/link
execute if entity @s[tag=interact_color_set,nbt={attack:{}}] run function baba:dev/tile_editor/actions/set_color
execute if entity @s[tag=interact_color_set,nbt={interaction:{}}] run function baba:dev/tile_editor/actions/set_color
execute if entity @s[tag=interact_number_set,nbt={attack:{}}] run function baba:dev/tile_editor/actions/set_number
execute if entity @s[tag=interact_number_set,nbt={interaction:{}}] run function baba:dev/tile_editor/actions/set_number
execute if entity @s[tag=interact_link_set,nbt={attack:{}}] run function baba:dev/tile_editor/actions/set_link
execute if entity @s[tag=interact_link_set,nbt={interaction:{}}] run function baba:dev/tile_editor/actions/set_link
data remove entity @s attack
data remove entity @s interaction
