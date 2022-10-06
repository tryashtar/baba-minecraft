summon marker ~ ~ ~ {Tags:["baba.object","spawn"]}
data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.sprite set from storage baba:main spawn
execute if data storage baba:main {spawn:"text"} run data modify entity @e[type=marker,tag=spawn,distance=..0.1,limit=1] data.text set from storage baba:main spawn_text
execute if data storage baba:main {spawn:"text"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add is_text
execute if data storage baba:main {spawn:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 20
execute if data storage baba:main {spawn:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 11
execute if data storage baba:main {spawn:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16
execute if data storage baba:main {spawn:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"blossom"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 13
execute if data storage baba:main {spawn:"bog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 28
execute if data storage baba:main {spawn:"brick"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"cliff"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"cloud"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"fence"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 25
execute if data storage baba:main {spawn:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7
execute if data storage baba:main {spawn:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 6
execute if data storage baba:main {spawn:"grass"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 13
execute if data storage baba:main {spawn:"hedge"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16
execute if data storage baba:main {spawn:"ice"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"lava"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16
execute if data storage baba:main {spawn:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"line"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 11
execute if data storage baba:main {spawn:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9
execute if data storage baba:main {spawn:"pipe"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7
execute if data storage baba:main {spawn:"rubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10
execute if data storage baba:main {spawn:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"baba"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"keke"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"me"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 11
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"robot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"belt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bird"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bug"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"crab"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rocket"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"skull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ghost"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"statue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bolt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"hand"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 11
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"algae"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 13
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"flag"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"key"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"love"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"door"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"flower"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 25
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"pillar"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rock"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fruit"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"moon"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"star"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 20
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"box"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fire"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"gate"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"jelly"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"reed"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"sign"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"sun"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fungi"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"husk"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"leaf"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"orb"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 20
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cake"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"dot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"foliage"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rose"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"dust"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fungus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"husks"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"stump"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"starfish"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"cursor"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"is"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_property
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"and"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.and
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"not"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.not
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"on"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"near"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"facing"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.infix
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"lonely"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.prefix
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"has"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"make"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.verb
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_noun
execute if data storage baba:main {spawn:"text",spawn_text:"write"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add accepts_property
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"all"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"empty"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"text"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"level"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"you"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"push"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 21
execute if data storage baba:main {spawn:"text",spawn_text:"pull"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 27
execute if data storage baba:main {spawn:"text",spawn_text:"move"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"shift"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 10
execute if data storage baba:main {spawn:"text",spawn_text:"defeat"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"text",spawn_text:"hot"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"melt"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 25
execute if data storage baba:main {spawn:"text",spawn_text:"hide"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"win"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 13
execute if data storage baba:main {spawn:"text",spawn_text:"stop"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"open"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"shut"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"float"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"sink"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 16
execute if data storage baba:main {spawn:"text",spawn_text:"weak"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 11
execute if data storage baba:main {spawn:"text",spawn_text:"swap"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"tele"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 27
execute if data storage baba:main {spawn:"text",spawn_text:"fall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"more"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 17
execute if data storage baba:main {spawn:"text",spawn_text:"red"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 25
execute if data storage baba:main {spawn:"text",spawn_text:"blue"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"sleep"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 25
execute if data storage baba:main {spawn:"text",spawn_text:"group"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"right"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"up"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"left"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"down"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"word"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"select"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 31
execute if data storage baba:main {spawn:"text",spawn_text:"best"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 12
execute if data storage baba:main {spawn:"text",spawn_text:"bonus"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"end"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"done"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.property
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cloud"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 30
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"fence"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"grass"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 27
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"hedge"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 13
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"ice"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"lava"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 24
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"bog"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 27
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"line"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 22
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"pipe"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"rubble"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 7
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 8
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"brick"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add part.noun
execute if data storage baba:main {spawn:"text",spawn_text:"cliff"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 14
execute if data storage baba:main {spawn:"tile"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 1
execute if data storage baba:main {spawn:"tree"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 20
execute if data storage baba:main {spawn:"trees"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 20
execute if data storage baba:main {spawn:"ufo"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 19
execute if data storage baba:main {spawn:"wall"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 9
execute if data storage baba:main {spawn:"wall"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
execute if data storage baba:main {spawn:"water"} run scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] color 23
execute if data storage baba:main {spawn:"water"} run tag @e[type=marker,tag=spawn,distance=..0.1,limit=1] add connector
scoreboard players set @e[type=marker,tag=spawn,distance=..0.1,limit=1] facing 4
