data modify storage baba:main direction set value [0f,0f]
execute store result storage baba:main direction[0] float 0.0000000005 run data get entity @s UUID[0]
execute store result storage baba:main direction[1] float 0.0000000005 run data get entity @s UUID[1]
kill @s
