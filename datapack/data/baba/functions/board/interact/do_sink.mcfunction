scoreboard players add sank baba 1
summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1..3 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1..3 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1..3 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1..3 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
execute if score sank baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba.particle","sink_particle"]}
# this doesn't consider rules that change the color of this object
# ... which is actually correct behavior!
scoreboard players operation color baba = @s color
execute store result storage baba:main context.color int 1 run scoreboard players get color baba
function baba:display/palette with storage baba:main context
scoreboard players operation @e[type=item_display,tag=sink_particle,tag=!init,distance=..0.2] color = color baba
function baba:board/interact/destroy
