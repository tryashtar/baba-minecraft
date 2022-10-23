summon marker ~ ~ ~ {Tags:["baba.object","spawn"]}
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main spawn
execute if data storage baba:main {spawn:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from storage baba:main spawn_text
execute if data storage baba:main {spawn:"text"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add is_text
execute if data storage baba:main {spawn:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 7620
execute if data storage baba:main {spawn:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6062905
execute if data storage baba:main {spawn:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 23193
execute if data storage baba:main {spawn:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 54043
execute if data storage baba:main {spawn:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9330332
execute if data storage baba:main {spawn:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 35402
execute if data storage baba:main {spawn:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4093576
execute if data storage baba:main {spawn:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 33425
execute if data storage baba:main {spawn:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"blossom"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 42294
execute if data storage baba:main {spawn:"blossom"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 58667
execute if data storage baba:main {spawn:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4938780
execute if data storage baba:main {spawn:"bog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 45408
execute if data storage baba:main {spawn:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 12661
execute if data storage baba:main {spawn:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 41172
execute if data storage baba:main {spawn:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 3550754
execute if data storage baba:main {spawn:"brick"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 17246
execute if data storage baba:main {spawn:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 65488
execute if data storage baba:main {spawn:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 20568
execute if data storage baba:main {spawn:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 32467
execute if data storage baba:main {spawn:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"cliff"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 48700
execute if data storage baba:main {spawn:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"cloud"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 22412
execute if data storage baba:main {spawn:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 23664
execute if data storage baba:main {spawn:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 2526
execute if data storage baba:main {spawn:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 54021
execute if data storage baba:main {spawn:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 58614
execute if data storage baba:main {spawn:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 42872
execute if data storage baba:main {spawn:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 26472
execute if data storage baba:main {spawn:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"fence"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 56535
execute if data storage baba:main {spawn:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 14151
execute if data storage baba:main {spawn:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 61188
execute if data storage baba:main {spawn:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5602016
execute if data storage baba:main {spawn:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 28145
execute if data storage baba:main {spawn:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5259044
execute if data storage baba:main {spawn:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 3475
execute if data storage baba:main {spawn:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 1108
execute if data storage baba:main {spawn:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 59074
execute if data storage baba:main {spawn:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 58060
execute if data storage baba:main {spawn:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 44713
execute if data storage baba:main {spawn:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30894
execute if data storage baba:main {spawn:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 3160100
execute if data storage baba:main {spawn:"grass"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 11302
execute if data storage baba:main {spawn:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 52941
execute if data storage baba:main {spawn:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4938780
execute if data storage baba:main {spawn:"hedge"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 18040
execute if data storage baba:main {spawn:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 40563
execute if data storage baba:main {spawn:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 26372
execute if data storage baba:main {spawn:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4093576
execute if data storage baba:main {spawn:"ice"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 49201
execute if data storage baba:main {spawn:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 45087
execute if data storage baba:main {spawn:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30686
execute if data storage baba:main {spawn:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 28861
execute if data storage baba:main {spawn:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"lava"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 23508
execute if data storage baba:main {spawn:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 26837
execute if data storage baba:main {spawn:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4093576
execute if data storage baba:main {spawn:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 60823
execute if data storage baba:main {spawn:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"line"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 1043
execute if data storage baba:main {spawn:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 61656
execute if data storage baba:main {spawn:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9330332
execute if data storage baba:main {spawn:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 50707
execute if data storage baba:main {spawn:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 39810
execute if data storage baba:main {spawn:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 22457
execute if data storage baba:main {spawn:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 40985
execute if data storage baba:main {spawn:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 2699585
execute if data storage baba:main {spawn:"pipe"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 55367
execute if data storage baba:main {spawn:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 8465
execute if data storage baba:main {spawn:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 13704
execute if data storage baba:main {spawn:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 20987
execute if data storage baba:main {spawn:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 31241
execute if data storage baba:main {spawn:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 27096
execute if data storage baba:main {spawn:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5259044
execute if data storage baba:main {spawn:"rubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 64585
execute if data storage baba:main {spawn:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 61583
execute if data storage baba:main {spawn:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8529436
execute if data storage baba:main {spawn:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 21096
execute if data storage baba:main {spawn:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 60402
execute if data storage baba:main {spawn:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 25730
execute if data storage baba:main {spawn:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 58937
execute if data storage baba:main {spawn:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 33356
execute if data storage baba:main {spawn:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 23193
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 45087
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 61656
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9330332
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 8465
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 35402
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 33425
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 65488
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 23664
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 20987
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 61583
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8529436
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 44713
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 25730
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 45408
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 11302
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 54043
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9330332
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 17246
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 22412
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 7620
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4938780
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 14151
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 30686
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 1043
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 49848
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 54021
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 61188
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5602016
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 22457
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 13704
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 29188
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 3475
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 50707
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 21096
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 2451
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6062905
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 12661
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 56535
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 58060
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 49201
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 55367
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 64585
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 33356
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 1108
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 18040
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 23508
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 39810
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 32385
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6062905
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 20568
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 58614
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 28145
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 31241
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 42872
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 59074
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 40563
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 58937
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 60402
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 2526
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 206
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_property
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 46765
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.and
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 39747
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.not
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 41746
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 52390
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 20119
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 59882
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.prefix
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 46949
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 441
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 45138
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_property
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 54784
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 4074
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 30442
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 26837
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 11922
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 28113
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12754502
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 48564
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10858815
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 38104
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 15414
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8529436
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 30994
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 25278
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 49463
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5602016
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 15885
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 32732
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4938780
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 14149
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 54722
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 7287
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 57229
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 1392
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4093576
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 656
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9330332
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 53569
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 35158
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10858815
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 40465
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 9690
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15029051
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 24838
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5602016
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 60585
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 25720
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5602016
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 20173
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 55028
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 28192
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 55766
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 34491
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 3763
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 4679
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15590021
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 19737
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14236010
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 53212
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 58751
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 7226
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 48700
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8636645
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 26472
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 30894
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10858815
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 52941
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 4938780
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 26372
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 28861
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14981456
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 42043
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 58667
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10858815
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 60823
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16777215
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 40985
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 2699585
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 27096
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 5259044
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 49468
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7566195
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 41172
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 30442
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] text 32467
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9463614
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 29188
execute if data storage baba:main {spawn:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 2368548
execute if data storage baba:main {spawn:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 2451
execute if data storage baba:main {spawn:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6062905
execute if data storage baba:main {spawn:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 32385
execute if data storage baba:main {spawn:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6062905
execute if data storage baba:main {spawn:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 49848
execute if data storage baba:main {spawn:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 15438282
execute if data storage baba:main {spawn:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 49468
execute if data storage baba:main {spawn:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 2699585
execute if data storage baba:main {spawn:"wall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] sprite 42043
execute if data storage baba:main {spawn:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6266321
execute if data storage baba:main {spawn:"water"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing 4
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] move_frame 0
