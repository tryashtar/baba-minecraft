data modify storage baba:main tile1 set from storage baba:main consume[0][0]
data modify storage baba:main tile2 set from storage baba:main consume[0][1]
data modify storage baba:main tile3 set from storage baba:main consume[0][2]
execute if data storage baba:main tile1{sprite:"text",variant:"baba"} if data storage baba:main tile2{sprite:"text",variant:"is"} if data storage baba:main tile3{sprite:"text"} run data modify storage baba:main properties.baba append from storage baba:main tile3.variant
execute if data storage baba:main tile1{sprite:"text",variant:"flag"} if data storage baba:main tile2{sprite:"text",variant:"is"} if data storage baba:main tile3{sprite:"text"} run data modify storage baba:main properties.flag append from storage baba:main tile3.variant
execute if data storage baba:main tile1{sprite:"text",variant:"wall"} if data storage baba:main tile2{sprite:"text",variant:"is"} if data storage baba:main tile3{sprite:"text"} run data modify storage baba:main properties.wall append from storage baba:main tile3.variant
execute if data storage baba:main tile1{sprite:"text",variant:"rock"} if data storage baba:main tile2{sprite:"text",variant:"is"} if data storage baba:main tile3{sprite:"text"} run data modify storage baba:main properties.rock append from storage baba:main tile3.variant
data remove storage baba:main consume[0][0]
execute if data storage baba:main consume[0][2] run function baba:update_properties_loop
