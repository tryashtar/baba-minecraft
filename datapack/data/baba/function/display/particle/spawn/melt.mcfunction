execute store result score random baba run random value 1..4
execute if score random baba matches 1 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","melt_particle","active"],transformation:{left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if score random baba matches 2 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","melt_particle","active"],transformation:{left_rotation:{axis:[0f,1f,0f],angle:1.57079633f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if score random baba matches 3 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","melt_particle","active"],transformation:{left_rotation:{axis:[0f,1f,0f],angle:3.14159265f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
execute if score random baba matches 4 run summon item_display ~ ~0.1 ~ {width:2f,height:0.1f,item_display:"fixed",Tags:["baba","baba.particle","melt_particle","active"],transformation:{left_rotation:{axis:[0f,1f,0f],angle:4.71238898f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
