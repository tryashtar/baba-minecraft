tp @s ~ ~ ~
execute if entity @e[type=text_display,tag=rule_display,tag=!self,distance=..0.01,limit=1] positioned ~ ~1 ~ run function baba:dev/rules/display/move
