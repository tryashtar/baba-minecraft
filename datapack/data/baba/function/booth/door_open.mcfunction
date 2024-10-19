scoreboard players set door_status baba 1
fill 77 74 -148 79 76 -148 air

playsound baba:open master @a 78.5 75.5 -147.0
execute on passengers run kill @s
tp @s ~ -100 ~
kill @s
kill @e[type=item_display,tag=baba_door,x=78,y=74,z=-148,distance=..10,limit=1]
