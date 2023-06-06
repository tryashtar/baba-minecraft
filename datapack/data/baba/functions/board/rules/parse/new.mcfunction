# structure of a rule:
# - subject:
#   - sprite: ID of object
#   - sprite_text: string array for object, either directly (["baba"]) or with letters (["b","a","b","a"])
#   - inverted: 1b for "not" objects
# - verb: ID of verb
# - verb_text: string array for verb
# - effect:
#   - text: ID of effect (noun/property)
#   - text_text: string array for effect
#   - inverted: 1b for "not" effects
# - conditions (list):
#   - condition: ID of condition
#   - condition_text: string array for condition
#   - inverted: 1b for "not" conditions
#   - parameters (list):
#     - text: ID of parameter (noun/property)
#     - text_text: string array for parameter
#     - inverted: 1b for "not" parameters
# - text_ids (list): IDs of text objects that participate in this rule

# rules (as they appear in the rule list) have exactly one subject, verb, and effect
# however, sentences (sequences of text objects) can use "and" to have multiple of these
# therefore, we need to separate them into individual rules

# all conditions necessarily apply to all rules in a sentence, so prefix conditions are stored in template rule 'rules1'
# each subject in the sentence adds this template to 'rules2', then applies its own data
# infix conditions can be directly applied to everything in 'rules2' as they are read
# lastly, each effect in the sentence adds this list of templates to 'rules3', then applies its own data to each

tag @s remove first_word
data modify storage baba:main parsing_stack set value [{inverted:0b,state:{noun:"subject",verb:"none",property:"none",and:"none",not:"self",prefix:"ready",infix:"none"},rules1:{}}]

function baba:board/rules/parse/consume
