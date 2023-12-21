scoreboard players set batch baba 0
execute store result score passed baba run data get storage baba:main test_report.passed
execute store result score failed baba run data get storage baba:main test_report.failed
tellraw @a [{"text":"---\n","color":"gray"},{"text":"","color":"green","hoverEvent":{"action":"show_text","contents":{"storage":"baba:main","nbt":"test_report.passed[]","interpret":true,"separator":{"text":", ","color":"gray"}}},"extra":[{"score":{"name":"passed","objective":"baba"}}," tests passed"]},"\n",{"text":"","color":"red","hoverEvent":{"action":"show_text","contents":{"storage":"baba:main","nbt":"test_report.failed[]","interpret":true,"separator":{"text":", ","color":"gray"}}},"extra":[{"score":{"name":"failed","objective":"baba"}}," tests failed"]}]
