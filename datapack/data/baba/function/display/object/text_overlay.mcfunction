execute if entity @s[tag=disabled] run summon item_display ~ ~ ~ {teleport_duration:3,width:1f,height:0.1f,item_display:"fixed",item:{id:"potion",count:1,components:{item_model:"baba:sprites/text_overlay/disabled-true",potion_contents:{custom_color:15029051}}},Tags:["baba","baba.overlay","active"]}
execute as @e[type=item_display,tag=baba.overlay,distance=..0.001] run ride @s mount @e[type=item_display,tag=baba.object,distance=..0.001,limit=1]
