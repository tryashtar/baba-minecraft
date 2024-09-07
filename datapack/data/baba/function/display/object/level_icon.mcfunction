scoreboard players operation first_digit baba = @s number
scoreboard players operation first_digit baba %= #10 baba
execute if entity @s[tag=style.jelly] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/jelly",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.moon] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/moon",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.question_mark] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/question_mark",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.island] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/island",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.flower] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/flower",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.abc] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/abc",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.pillar] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/pillar",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.square] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/square",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dust] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dust",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.leaf] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/leaf",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.skull] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/skull",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.text] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/text",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.tree] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/tree",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.snow] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/snow",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dot] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dot",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=1}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-1",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=2}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-2",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=3}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-3",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=4}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-4",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=5}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-5",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=6}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-6",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=7}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-7",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=8}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-8",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=9}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-9",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=10}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-10",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.dice,scores={number=11}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/dice.number-11",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=1}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-1",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=2}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-2",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=3}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-3",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=4}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-4",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=5}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-5",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=6}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-6",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=7}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-7",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=8}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-8",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.letter,scores={number=9}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/letter.number-9",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 0 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-0",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=0..9}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-0-9",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 1 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-1",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=10..19}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-10-19",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 2 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-2",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=20..29}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-20-29",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 3 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-3",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=30..39}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-30-39",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 4 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-4",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=40..49}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-40-49",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 5 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-5",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=50..59}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-50-59",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 6 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-6",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=60..69}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-60-69",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 7 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-7",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=70..79}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-70-79",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 8 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-8",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=80..89}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-80-89",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if score first_digit baba matches 9 if entity @s[tag=style.digit] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.first_digit-9",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=style.digit,scores={number=90..99}] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/level_icon/digit.number-90-99",potion_contents:{custom_color:16777215}}},Tags:["baba","baba.overlay","active"]}
execute if entity @s[tag=complete] run item modify entity @e[type=item_display,tag=baba.overlay,distance=..0.001] contents {function:"set_components",components:{potion_contents:{custom_color:4676017}}}
execute as @e[type=item_display,tag=baba.overlay,distance=..0.001] run ride @s mount @e[type=item_display,tag=baba.object,distance=..0.001,limit=1]
