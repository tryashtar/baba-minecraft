summon item_display 65.5 73.875 -157.5 {Tags:["baba","baba_box"],billboard: "center", height: 1.0f, item: {components: {"minecraft:custom_model_data": 794305, "minecraft:potion_contents": {custom_color: 12754502}}, count: 1, id: "minecraft:potion"}, shadow_radius: 0.5f, transformation: {left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}, width: 1.0f}

kill @e[type=item_display,tag=baba_hat,x=66,y=73,z=-157,distance=..10]
kill @e[type=interaction,tag=baba_hat_get,x=66,y=73,z=-157,distance=..10]
setblock 65 74 -158 barrier
