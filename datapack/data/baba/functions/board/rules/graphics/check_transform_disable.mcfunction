execute store result score subject baba run data get storage baba:main rule.subject.sprite
execute store result score effect baba run data get storage baba:main rule.effect.text
execute if score subject baba = effect baba run function baba:board/rules/graphics/transform_disabling
