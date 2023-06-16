scoreboard players operation spawn baba = @s sprite
scoreboard players operation spawn_text baba = @s text
execute positioned ~1 ~ ~ if block ~ ~-1 ~ #baba:board run function baba:board/interact/clone
execute positioned ~-1 ~ ~ if block ~ ~-1 ~ #baba:board run function baba:board/interact/clone
execute positioned ~ ~ ~1 if block ~ ~-1 ~ #baba:board run function baba:board/interact/clone
execute positioned ~ ~ ~-1 if block ~ ~-1 ~ #baba:board run function baba:board/interact/clone
