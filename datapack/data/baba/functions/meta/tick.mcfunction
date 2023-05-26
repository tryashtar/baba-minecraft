execute as @a[scores={win=1..}] run function baba:progress/win
execute as @a[predicate=baba:on_ground] at @s run function baba:input/check

execute as @e[type=item_display,tag=particle,tag=!init] run function baba:display/particle/init
execute as @e[type=item_display,tag=particle] run function baba:display/particle/tick
execute at @e[type=item_display,tag=baba.object,tag=prop.win] if predicate baba:win_particle run summon item_display ~ ~0.1 ~ {item_display:"fixed",Tags:["particle","win_particle"]}
