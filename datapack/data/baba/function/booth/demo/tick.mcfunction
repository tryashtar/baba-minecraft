function baba:input/input
execute as @e[type=marker,tag=baba.board,distance=..40,limit=1] at @s run function baba:display/tick
execute as @e[type=interaction,tag=baba_demo,distance=..40,limit=1] at @s run function baba:booth/demo/input_check
