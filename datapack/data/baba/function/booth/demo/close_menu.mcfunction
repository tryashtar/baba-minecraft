kill @e[type=interaction,tag=baba_demo,x=75,y=73,z=-160,distance=..10]
kill @e[type=text_display,tag=baba_menu_text,x=75,y=73,z=-160,distance=..10]
tag @e[type=item_display,tag=baba_mount,x=75,y=73,z=-160,distance=..10] remove in_menu
summon interaction 75.5 74.5 -160.5 {Tags:["baba","baba_demo"],width:1f,height:1f}
