tag @s add dirty
scoreboard players set @s[scores={facing=1}] facing -3
scoreboard players set @s[scores={facing=2}] facing 1
scoreboard players set @s[scores={facing=3}] facing -1
scoreboard players set @s[scores={facing=4}] facing 3
scoreboard players add @s[scores={facing=..-1}] facing 5
