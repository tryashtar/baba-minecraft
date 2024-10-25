scoreboard players set door_status baba 1
fill 77 74 -148 79 76 -148 air

playsound baba:open master @a 78.5 75.5 -147.0
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}
summon item_display 78.5 75.5 -147.0 {width:2f,height:2f,item_display:"fixed",Tags:["baba","baba.particle","big_open_particle"],billboard:"center",transformation:{left_rotation: [0.0f, 0.7071068f, 0.7071068f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.5f]}}

execute on passengers run kill @s
tp @s ~ -100 ~
kill @s
kill @e[type=item_display,tag=baba_door,x=78,y=74,z=-148,distance=..10,limit=1]
