execute if data storage baba:main rule{verb:"is"} run data modify storage baba:main cache.properties append from storage baba:main rule.effect{inverted:0b}.property
execute if data storage baba:main rule{verb:"is"} run data modify storage baba:main cache.disabled_properties append from storage baba:main rule.effect{inverted:1b}.property
execute if data storage baba:main rule{verb:"is"} run data modify storage baba:main cache.transforms append from storage baba:main rule.effect{inverted:0b}.sprite
execute if data storage baba:main rule{verb:"is"} run data modify storage baba:main cache.disabled_transforms append from storage baba:main rule.effect{inverted:1b}.sprite
execute if data storage baba:main rule{verb:"has"} run data modify storage baba:main cache.has append from storage baba:main rule.effect{inverted:0b}.sprite
execute if data storage baba:main rule{verb:"has"} run data modify storage baba:main cache.disabled_has append from storage baba:main rule.effect{inverted:1b}.sprite
execute if data storage baba:main rule{verb:"make"} run data modify storage baba:main cache.make append from storage baba:main rule.effect{inverted:0b}.sprite
execute if data storage baba:main rule{verb:"make"} run data modify storage baba:main cache.disabled_make append from storage baba:main rule.effect{inverted:1b}.sprite
execute if data storage baba:main rule{verb:"write"} run data modify storage baba:main cache.write append from storage baba:main rule.effect{inverted:0b}.text
execute if data storage baba:main rule{verb:"write"} run data modify storage baba:main cache.disabled_write append from storage baba:main rule.effect{inverted:1b}.text
