setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=false,slot_3_occupied=true,slot_4_occupied=false,slot_5_occupied=false,facing=south]
execute unless data storage baba:main tile.scores{color:9463614} run scoreboard players set write_color baba 1
execute unless data storage baba:main tile.scores{appearance:-8} run scoreboard players set write_sprite baba 1
