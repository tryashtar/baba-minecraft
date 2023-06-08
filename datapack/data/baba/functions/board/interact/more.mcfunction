scoreboard players operation spawn baba = @s sprite
scoreboard players operation spawn_text baba = @s text
scoreboard players operation spawn_variant baba = @s variant
execute positioned ~1 ~ ~ run function baba:board/interact/clone
execute positioned ~-1 ~ ~ run function baba:board/interact/clone
execute positioned ~ ~ ~1 run function baba:board/interact/clone
execute positioned ~ ~ ~-1 run function baba:board/interact/clone
