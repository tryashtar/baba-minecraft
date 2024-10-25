# someone started the demo
execute if score has_hitter baba matches 1 on attacker at @s run function baba:booth/demo/begin
execute if score has_hitter baba matches 2 on target at @s run function baba:booth/demo/begin
kill @s
kill @e[type=item_display,tag=baba_spin,distance=..10,limit=1]
summon interaction ~ ~1 ~ {Tags:["baba","baba_demo"],width:1f,height:1f}
playsound baba:enter_level master @a 75 74 -162
