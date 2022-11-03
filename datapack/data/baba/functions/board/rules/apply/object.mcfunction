# all of these use the same trick
# try to add the effect text to the 'Tags' of a marker
# if this results in the list increasing in size, add the effect to the entity data
# otherwise, the effect has already been applied, disabled or otherwise
execute if data storage baba:main rule{verb_text:"is",effect:{part:"property"}} run function baba:board/rules/apply/property
execute if data storage baba:main rule{verb_text:"is",effect:{part:"noun"}} run function baba:board/rules/apply/transform
execute if data storage baba:main rule{verb_text:"write"} run function baba:board/rules/apply/write
execute if data storage baba:main rule{verb_text:"has"} run function baba:board/rules/apply/has
execute if data storage baba:main rule{verb_text:"make"} run function baba:board/rules/apply/make
