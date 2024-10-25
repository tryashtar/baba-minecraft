# someone started the demo
summon item_display 75.5 74.0 -160.5 {Tags:["baba","baba_mount"], width: 0.0f, height: 0.0f}
summon interaction 75.5 74.5 -160.5 {Tags:["baba","baba_demo"],width:1f,height:1f}
execute if score has_hitter baba matches 1 on attacker at @s run function baba:booth/demo/begin
execute if score has_hitter baba matches 2 on target at @s run function baba:booth/demo/begin
kill @s
kill @e[type=item_display,tag=baba_spin,distance=..10,limit=1]

playsound baba:enter_level master @a 75 74 -162
data modify storage baba:main load_level set value "map"
scoreboard players set load_timer baba 23
summon minecraft:text_display 82.9375 75.0625 -156.5 {Tags:["baba","baba_rules"],alignment:"center",billboard:"fixed",text:'""',line_width:2000,background:1879048192,transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}}
