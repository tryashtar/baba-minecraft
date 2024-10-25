execute as @e[type=item_display,tag=baba.object,tag=active,tag=reparse,tag=first_word,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] positioned as @s positioned ^ ^ ^1 unless entity @e[type=item_display,tag=baba.object,tag=active,tag=reparse,distance=..0.1,limit=1] run tag @s remove first_word
execute as @e[type=item_display,tag=baba.object,tag=active,tag=reparse,tag=first_word,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] positioned as @s run function baba:board/rules/parse/new

execute if entity @e[type=item_display,tag=baba.object,tag=active,tag=first_word,limit=1,x=63.0,y=67.0,z=-168.0,dx=24,dy=14,dz=1] run function baba:board/rules/parse
