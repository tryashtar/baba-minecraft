execute if score win baba matches 49 run playsound baba:win master @a 75 74 -162
execute if score win baba matches 10 run data modify storage baba:main load_level set value "map"
execute if score win baba matches 10 run scoreboard players set load_timer baba 23

execute if score win baba matches 49 run summon text_display 75.5 75.5 -166.4375 {Tags:["baba","baba_gratz"],alignment: "center", background: 0, default_background: 0b, line_width: 2000, see_through: 0b, shadow: 0b, text: '""', text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [5.0f, 5.0f, 5.0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score win baba matches 47 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"a b","font":"baba:congrats"}'
execute if score win baba matches 45 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"c d","font":"baba:congrats"}'
execute if score win baba matches 43 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"e f","font":"baba:congrats"}'
execute if score win baba matches 41 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"g h","font":"baba:congrats"}'
execute if score win baba matches 39 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"i j","font":"baba:congrats"}'
execute if score win baba matches 37 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"k l","font":"baba:congrats"}'
execute if score win baba matches 35 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"m n","font":"baba:congrats"}'
execute if score win baba matches 33 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"o p","font":"baba:congrats"}'
execute if score win baba matches 31 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"q r","font":"baba:congrats"}'
execute if score win baba matches 29 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"s t","font":"baba:congrats"}'
execute if score win baba matches 27 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"u v","font":"baba:congrats"}'
execute if score win baba matches 25 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"w x","font":"baba:congrats"}'
execute if score win baba matches 23 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"y z","font":"baba:congrats"}'

execute if score win baba matches 21 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"1 2","font":"baba:congrats"}'
execute if score win baba matches 19 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"3 4","font":"baba:congrats"}'
execute if score win baba matches 17 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"1 2","font":"baba:congrats"}'
execute if score win baba matches 15 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"3 4","font":"baba:congrats"}'
execute if score win baba matches 13 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"1 2","font":"baba:congrats"}'
execute if score win baba matches 11 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"3 4","font":"baba:congrats"}'
execute if score win baba matches 9 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"1 2","font":"baba:congrats"}'
execute if score win baba matches 7 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"3 4","font":"baba:congrats"}'
execute if score win baba matches 5 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"1 2","font":"baba:congrats"}'
execute if score win baba matches 3 run data modify entity @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1] text set value '{"text":"3 4","font":"baba:congrats"}'

execute if score win baba matches 1 run kill @e[type=text_display,x=75,y=75,z=-166,distance=..10,limit=1]

execute if score win baba matches 49 if score loaded_level baba matches 1 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat1
execute if score win baba matches 49 if score loaded_level baba matches 2 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat2
execute if score win baba matches 49 if score loaded_level baba matches 3 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat3
execute if score win baba matches 49 if score loaded_level baba matches 4 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat4
execute if score win baba matches 49 if score loaded_level baba matches 5 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat5
execute if score win baba matches 49 if score loaded_level baba matches 6 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat6
execute if score win baba matches 49 if score loaded_level baba matches 7 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat7
execute if score win baba matches 49 if score loaded_level baba matches 8 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat8
execute if score win baba matches 49 if score loaded_level baba matches 9 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat9
execute if score win baba matches 49 if score loaded_level baba matches 10 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat10
execute if score win baba matches 49 if score loaded_level baba matches 11 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat11
execute if score win baba matches 49 if score loaded_level baba matches 12 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat12
execute if score win baba matches 49 if score loaded_level baba matches 13 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat13
execute if score win baba matches 49 if score loaded_level baba matches 14 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat14
execute if score win baba matches 49 if score loaded_level baba matches 15 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat15
execute if score win baba matches 49 if score loaded_level baba matches 100 run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat100
execute if score win baba matches 49 if score loaded_level baba matches 4.. run tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] add baba_beat_main

scoreboard players remove win baba 1
