tag @s add self
scoreboard players operation disabled baba = @s text_disabled
execute if score disabled baba matches 0 run data modify entity 0-0-0-0-1 text set value '[{"selector":"@e[type=marker,tag=baba.rule,tag=self,limit=1]"},"\\n"]'
execute unless score disabled baba matches 0 run data modify entity 0-0-0-0-1 text set value '[{"selector":"@e[type=marker,tag=baba.rule,tag=self,limit=1]","color":"red"}," ",{"score":{"name":"disabled","objective":"baba"},"color":"dark_red"},"\\n"]'
data modify storage baba:main text append from entity 0-0-0-0-1 text
tag @s remove self
