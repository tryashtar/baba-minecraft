scoreboard players remove @s life 1
kill @s[scores={life=..0}]

execute if entity @s[tag=win_particle] run function baba:display/particle/tick/win
execute if entity @s[tag=melt_particle] run function baba:display/particle/tick/melt
