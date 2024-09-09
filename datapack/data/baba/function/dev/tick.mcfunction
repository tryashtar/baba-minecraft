execute as @e[type=marker,tag=baba.create_level] at @s run function baba:dev/tool/make_board/use
kill @e[type=marker,tag=baba.create_level]

execute as @e[type=marker,tag=baba.copy_tile] at @s run function baba:dev/tool/copier/use
kill @e[type=marker,tag=baba.copy_tile]

execute as @e[type=marker,tag=baba.swap_text] at @s positioned ~ ~-1 ~ run function baba:dev/tool/text_swap/use
kill @e[type=marker,tag=baba.swap_text]
