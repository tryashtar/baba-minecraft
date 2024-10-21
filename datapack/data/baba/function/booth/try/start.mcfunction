execute if score has_hitter baba matches 1 on attacker at @s run function baba:booth/try/begin
execute if score has_hitter baba matches 2 on target at @s run function baba:booth/try/begin
kill @s
kill @e[type=item_display,tag=baba_spin,distance=..10,limit=1]
