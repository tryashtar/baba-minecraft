kill @e[type=interaction,tag=baba_demo,distance=..10,limit=1]
summon interaction 74.5 75.0 -163.5 {width:1f,height:1f,response:1b,Tags:["baba","baba_demo","baba_menu"]}
summon interaction 76.5 75.0 -163.5 {width:1f,height:1f,response:1b,Tags:["baba","baba_demo","baba_quit"]}
summon interaction 75.5 74.0 -163.5 {width:1f,height:1f,response:1b,Tags:["baba","baba_demo","baba_resume"]}
summon text_display 74.5 75.0 -163.5 {text:'{"text":"back\\n to map ","font":"baba:font"}',Tags:["baba","baba_menu_text"],alignment:"center",shadow:1b,background:-10973971,transformation:{translation:[-0.4f,0f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},billboard:"fixed"}
summon text_display 76.5 75.0 -163.5 {text:'{"text":"exit\\n  demo  ","font":"baba:font"}',Tags:["baba","baba_menu_text"],alignment:"center",shadow:1b,background:-1211048,transformation:{translation:[0.35f,0f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},billboard:"fixed"}
summon text_display 75.5 74.0 -163.5 {text:'{"text":"resume\\n level ","font":"baba:font"}',Tags:["baba","baba_menu_text"],alignment:"center",shadow:1b,background:-9787854,transformation:{translation:[0f,-0.2f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},billboard:"fixed"}
