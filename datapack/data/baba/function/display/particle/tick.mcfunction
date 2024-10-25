scoreboard players remove @s life 1
kill @s[scores={life=..0}]
execute if entity @s[tag=win_particle] run function baba:display/particle/tick/win
execute if entity @s[tag=open_particle] run function baba:display/particle/tick/open
execute if entity @s[tag=big_open_particle] run function baba:display/particle/tick/big_open
execute if entity @s[tag=melt_particle] run function baba:display/particle/tick/melt
execute if entity @s[tag=sink_particle] run function baba:display/particle/tick/sink
execute if entity @s[tag=defeat_particle] run function baba:display/particle/tick/defeat
execute if entity @s[tag=tele_particle] run function baba:display/particle/tick/tele
execute if entity @s[tag=big_tele_particle] run function baba:display/particle/tick/big_tele
