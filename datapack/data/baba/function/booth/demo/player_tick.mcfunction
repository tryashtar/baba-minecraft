scoreboard players set has_rider baba 1
function baba:input/input
execute as @e[type=interaction,tag=baba_demo,distance=..40,limit=1] at @s run function baba:booth/demo/input_check
