playsound baba:secret master @a 75 74 -162
place template baba:booth_hot 61 66 -171
execute unless entity @e[type=interaction,tag=baba_hat_get,x=66,y=73,z=-157,distance=..10,limit=1] run function baba:booth/open_box
