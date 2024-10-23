kill @e[type=item_display,tag=baba_spin,x=75,y=73,z=-160,distance=..10]
kill @e[type=interaction,tag=baba_play,x=75,y=73,z=-160,distance=..10]
kill @e[type=interaction,tag=baba_demo,x=75,y=73,z=-160,distance=..10]
kill @e[type=item_display,tag=baba_mount,x=75,y=73,z=-160,distance=..10]
kill @e[type=text_display,tag=baba_try,x=75,y=73,z=-160,distance=..10]
summon item_display 75.5 73.5 -160.5 {Tags:["baba","baba_spin"], billboard: "center", height: 3.0f, item: {components: {"minecraft:custom_model_data": 2, "minecraft:potion_contents": {custom_color: 16777215}}, count: 1, id: "minecraft:potion"}, shadow_radius: 0.3f, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.2f, 1.2f, 1.2f], translation: [0.0f, 0.0f, 0.5f]}, width: 3.0f}
summon interaction 75.5 72.5 -160.5 {Tags:["baba", "baba_play"], width: 1.5f, height: 1.5f, response: 1b}
summon item_display 75.5 73.0 -160.5 {Tags:["baba","baba_mount"], width: 0.0f, height: 0.0f}
summon text_display 75.5 72.25 -159.99 {Tags:["baba","baba_try"], alignment: "center", background: 0, default_background: 0b, line_width: 60, see_through: 0b, shadow: 1b, text: '{"text":"","extra":["try some levels!"],"font":"baba:font"}', text_opacity: -1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}}
function baba:booth/demo/levels/map
