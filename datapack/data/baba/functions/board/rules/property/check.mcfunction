data modify storage baba:main affected set value []
summon marker ~ ~ ~ {Tags:["text_parser"]}
execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 180 0 positioned ^ ^ ^1 run function baba:board/rules/find_affected
tp @e[type=marker,tag=text_parser,limit=1] ~ ~ ~
execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 0 0 run function baba:board/rules/find_effect
#execute as @e[type=marker,tag=text_parser,distance=..0.1,limit=1] rotated 270 0 positioned ^ ^ ^1 run function baba:board/rules/find_affected
kill @e[type=marker,tag=text_parser,limit=1]
