clone ~ ~ ~ ~ ~ ~ ~ ~ ~ replace force
clone ~ ~ ~3 ~ ~ ~3 ~ ~ ~3 replace force
execute if block ~ ~-1 ~1 air if block ~ ~-1 ~2 white_concrete run tp @s ~ ~ ~2
execute if block ~ ~-1 ~1 air unless block ~ ~-1 ~2 white_concrete run tp @s ~30 ~ 50
execute unless block ~ ~-1 ~1 air positioned ~ ~ ~1 run function baba:dev/datafix/find_next
