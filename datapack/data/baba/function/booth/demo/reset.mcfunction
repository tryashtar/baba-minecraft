tag @a[tag=baba_playing,x=75,y=73,z=-160,distance=..40] remove baba_playing
kill @e[type=item_display,tag=baba_spin,x=75,y=73,z=-160,distance=..10]
kill @e[type=interaction,tag=baba_play,x=75,y=73,z=-160,distance=..10]
kill @e[type=interaction,tag=baba_demo,x=75,y=73,z=-160,distance=..10]
kill @e[type=item_display,tag=baba_mount,x=75,y=73,z=-160,distance=..10]
kill @e[type=text_display,tag=baba_try,x=75,y=73,z=-160,distance=..10]
kill @e[type=text_display,tag=baba_rules,x=75,y=73,z=-160,distance=..10]
kill @e[type=text_display,tag=baba_menu_text,x=75,y=73,z=-160,distance=..10]
summon item_display 75.5 73.5 -160.5 {Tags:["baba","baba_spin"], billboard: "center", height: 3.0f, item: {components: {"minecraft:custom_model_data": 2, "minecraft:potion_contents": {custom_color: 16777215}}, count: 1, id: "minecraft:potion"}, shadow_radius: 0.3f, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.2f, 1.2f, 1.2f], translation: [0.0f, 0.0f, 0.5f]}, width: 3.0f}
summon interaction 75.5 72.5 -160.5 {Tags:["baba", "baba_play"], width: 1.5f, height: 1.5f, response: 1b}
summon text_display 75.5 72.25 -159.99 {Tags:["baba","baba_try"], alignment: "center", background: 0, default_background: 0b, line_width: 60, see_through: 0b, shadow: 1b, text: '{"text":"","extra":["try some levels!"],"font":"baba:font"}', text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}

kill @e[tag=baba,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1]
summon minecraft:item_display 72.5 77.0 -166.4375 {Tags:["baba"], height: 8.0f, item: {components: {"minecraft:custom_model_data": 42, "minecraft:potion_contents": {custom_color: 14236010}}, count: 1, id: "minecraft:potion"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]}, width: 8.0f}
summon minecraft:item_display 75.5 77.0 -166.4375 {Tags:["baba"], height: 8.0f, item: {components: {"minecraft:custom_model_data": 74, "minecraft:potion_contents": {custom_color: 16777215}}, count: 1, id: "minecraft:potion"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]}, width: 8.0f}
summon minecraft:item_display 78.5 77.0 -166.4375 {Tags:["baba"], height: 8.0f, item: {components: {"minecraft:custom_model_data": 104, "minecraft:potion_contents": {custom_color: 9330332}}, count: 1, id: "minecraft:potion"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]}, width: 8.0f}
