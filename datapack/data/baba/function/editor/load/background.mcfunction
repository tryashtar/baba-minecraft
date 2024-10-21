$data modify storage baba:main context.wall set from storage baba:main data.palettes.$(palette).wall
$data modify storage baba:main context.floor set from storage baba:main data.palettes.$(palette).floor
$data modify storage baba:main context.floor_bg set from storage baba:main data.palettes.$(palette).floor_bg
$data modify storage baba:main context.wall_bg set from storage baba:main data.palettes.$(palette).wall_bg
function baba:editor/load/background_2 with storage baba:main context
