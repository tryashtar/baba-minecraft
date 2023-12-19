$execute unless data storage baba:main {all_list:[{text:$(sprite)}]} run data modify storage baba:main all_list append value {text:$(sprite),inverted:0b}
$execute if entity @s[tag=part.noun] unless data storage baba:main {all_list:[{text:$(text)}]} run data modify storage baba:main all_list append value {text:$(text),inverted:0b}
$execute unless data storage baba:main words{noun:[$(sprite)]} run data modify storage baba:main words.noun append value $(sprite)
$execute if entity @s[tag=part.noun] unless data storage baba:main words{noun:[$(text)]} run data modify storage baba:main words.noun append value $(text)
$execute if entity @s[tag=part.property] unless data storage baba:main words{property:[$(text)]} run data modify storage baba:main words.property append value $(text)
$execute if entity @s[tag=part.verb] unless data storage baba:main words{verb:[$(text)]} run data modify storage baba:main words.verb append value $(text)
$execute if entity @s[tag=part.prefix] unless data storage baba:main words{prefix:[$(text)]} run data modify storage baba:main words.prefix append value $(text)
$execute if entity @s[tag=part.infix] unless data storage baba:main words{infix:[$(text)]} run data modify storage baba:main words.infix append value $(text)
$execute if entity @s[tag=part.and] unless data storage baba:main words{and:[$(text)]} run data modify storage baba:main words.and append value $(text)
$execute if entity @s[tag=part.not] unless data storage baba:main words{not:[$(text)]} run data modify storage baba:main words.not append value $(text)
