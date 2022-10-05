data modify storage baba:main sprite set from storage baba:main rule.subject.sprite
execute store success score different baba run data modify storage baba:main sprite set from storage baba:main rule.effect.sprite
execute if score different baba matches 0 run function baba:board/rules/graphics/transform_disabling
