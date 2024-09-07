$execute unless data storage baba:main palette{all_list:[{text:$(sprite)}]} run data modify storage baba:main palette.all_list append value {text:$(sprite),inverted:0b}
$execute if entity @s[tag=part.noun] unless data storage baba:main palette{all_list:[{text:$(text)}]} run data modify storage baba:main palette.all_list append value {text:$(text),inverted:0b}
$execute unless data storage baba:main palette.words{noun:[$(sprite)]} run data modify storage baba:main palette.words.noun append value $(sprite)
$execute if entity @s[tag=part.noun] unless data storage baba:main palette.words{noun:[$(text)]} run data modify storage baba:main palette.words.noun append value $(text)
$execute if entity @s[tag=part.property] unless data storage baba:main palette.words{property:[$(text)]} run data modify storage baba:main palette.words.property append value $(text)
$execute if entity @s[tag=part.verb] unless data storage baba:main palette.words{verb:[$(text)]} run data modify storage baba:main palette.words.verb append value $(text)
$execute if entity @s[tag=part.prefix] unless data storage baba:main palette.words{prefix:[$(text)]} run data modify storage baba:main palette.words.prefix append value $(text)
$execute if entity @s[tag=part.infix] unless data storage baba:main palette.words{infix:[$(text)]} run data modify storage baba:main palette.words.infix append value $(text)
$execute if entity @s[tag=part.and] unless data storage baba:main palette.words{and:[$(text)]} run data modify storage baba:main palette.words.and append value $(text)
$execute if entity @s[tag=part.not] unless data storage baba:main palette.words{not:[$(text)]} run data modify storage baba:main palette.words.not append value $(text)
