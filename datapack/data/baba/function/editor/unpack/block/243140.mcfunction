setblock ~ ~ ~ chiseled_bookshelf[slot_0_occupied=true,slot_1_occupied=false,slot_2_occupied=false,slot_3_occupied=false,slot_4_occupied=true,slot_5_occupied=true,facing=south]
execute unless data storage baba:main tile.scores{color:16777215} run scoreboard players set write_color baba 1
execute unless data storage baba:main tile.scores{appearance:243140} run scoreboard players set write_sprite baba 1
