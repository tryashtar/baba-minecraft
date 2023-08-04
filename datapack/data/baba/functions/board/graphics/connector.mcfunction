tag @s remove up
tag @s remove down
tag @s remove left
tag @s remove right
scoreboard players operation sprite baba = @s sprite
execute store result storage baba:main context.sprite int 1 run scoreboard players get @s sprite
function baba:board/graphics/connector.macro with storage baba:main context
