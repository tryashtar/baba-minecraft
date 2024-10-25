scoreboard players add @s walk 1
execute if entity @s[scores={walk=2}] run function baba:display/particle/init
scoreboard players remove @s[tag=init] life 1
kill @s[tag=init,scores={life=..0}]
execute if entity @s[tag=win_particle] run function baba:display/particle/tick/win
execute if entity @s[tag=open_particle] run function baba:display/particle/tick/open
execute if entity @s[tag=melt_particle] run function baba:display/particle/tick/melt
execute if entity @s[tag=sink_particle] run function baba:display/particle/tick/sink
execute if entity @s[tag=defeat_particle] run function baba:display/particle/tick/defeat
execute if entity @s[tag=tele_particle] run function baba:display/particle/tick/tele
