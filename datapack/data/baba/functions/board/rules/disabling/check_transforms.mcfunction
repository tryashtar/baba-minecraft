# 'A is A' disables 'A is B'
execute if score @s sprite = @s text if score @s sprite = subject baba unless score effect baba = @s text run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
# 'A is A' disables 'A write A'
execute if score @s sprite = @s text if score @s sprite = subject baba if data storage baba:main rule{verb:12584543} run data modify storage baba:main disabled_ids append from storage baba:main current_ids[]
