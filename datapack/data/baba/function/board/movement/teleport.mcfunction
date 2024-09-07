# this tag prevents teleporting back if your destination object runs the teleport function after your starting object
# it also prevents you from swapping with 'swap' objects
tag @s add teleported
scoreboard players add teleported baba 1

execute at @s run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute at @s run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 at @s run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 at @s run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 at @s run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}

function baba:board/movement/move_here

summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
execute if score teleported baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","tele_particle","active"]}
