setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=false,slot_5_occupied=true,facing=north]
execute unless data storage baba:main tile.scores{color:8636645} run scoreboard players set write_color baba 1
execute unless data storage baba:main tile.scores{appearance:-2} run scoreboard players set write_sprite baba 1
