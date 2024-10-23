setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=true,slot_2_occupied=true,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=north]
execute unless data storage baba:main tile.scores{color:15029051} run scoreboard players set write_color baba 1
execute unless data storage baba:main tile.scores{appearance:90090} run scoreboard players set write_sprite baba 1
