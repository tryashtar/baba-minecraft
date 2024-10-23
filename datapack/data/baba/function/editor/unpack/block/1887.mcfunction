setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=false,slot_1_occupied=false,slot_2_occupied=true,slot_3_occupied=true,slot_4_occupied=true,slot_5_occupied=false,facing=north]
execute unless data storage baba:main tile.scores{color:12754502} run scoreboard players set write_color baba 1
execute unless data storage baba:main tile.scores{appearance:1887} run scoreboard players set write_sprite baba 1
