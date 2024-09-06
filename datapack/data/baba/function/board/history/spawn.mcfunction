execute summon item_display run function baba:board/history/spawn_init
data remove storage baba:main previous.objects[0]
execute if data storage baba:main previous.objects[0] run function baba:board/history/spawn
