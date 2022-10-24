execute if data storage baba:main condition{inverted:0b} if entity @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players set affected baba 0
execute if data storage baba:main condition{inverted:1b} unless entity @e[type=marker,tag=baba.object,tag=!self,distance=..0.1] run scoreboard players set affected baba 0
