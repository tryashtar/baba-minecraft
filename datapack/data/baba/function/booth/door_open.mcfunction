scoreboard players set door_status baba 1
fill 77 74 -148 79 76 -148 air

playsound baba:open master @a 78.5 75.5 -147.0
execute on passengers run kill @s
kill @s
kill @e[type=item_display,tag=baba_door,distance=..10,limit=1]
