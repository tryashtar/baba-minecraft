data modify storage baba:main level set from block ~ ~ ~ RecordItem.tag.level
execute if data storage baba:main level[0] positioned ~ ~1 ~ run function baba:io/editor/unpack/row
