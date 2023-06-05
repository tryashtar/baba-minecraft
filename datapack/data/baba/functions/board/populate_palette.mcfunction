data modify storage baba:main all_list set value []
data modify storage baba:main words set value {noun:[],property:[],verb:[],infix:[],prefix:[],and:[],not:[]}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=40150},limit=1] run data modify storage baba:main all_list append value {sprite:40150,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=40150},limit=1] unless data storage baba:main all_list[{sprite:40150}] run data modify storage baba:main all_list append value {sprite:40150,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=40150},limit=1] run data modify storage baba:main words.noun append value {id:40150,text:"baba"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=220460},limit=1] run data modify storage baba:main all_list append value {sprite:220460,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=220460},limit=1] unless data storage baba:main all_list[{sprite:220460}] run data modify storage baba:main all_list append value {sprite:220460,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=220460},limit=1] run data modify storage baba:main words.noun append value {id:220460,text:"keke"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=356},limit=1] run data modify storage baba:main all_list append value {sprite:356,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=356},limit=1] unless data storage baba:main all_list[{sprite:356}] run data modify storage baba:main all_list append value {sprite:356,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=356},limit=1] run data modify storage baba:main words.noun append value {id:356,text:"me"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=9863066},limit=1] run data modify storage baba:main all_list append value {sprite:9863066,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=9863066},limit=1] unless data storage baba:main all_list[{sprite:9863066}] run data modify storage baba:main all_list append value {sprite:9863066,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=9863066},limit=1] run data modify storage baba:main words.noun append value {id:9863066,text:"robot"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=43355},limit=1] run data modify storage baba:main all_list append value {sprite:43355,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=43355},limit=1] unless data storage baba:main all_list[{sprite:43355}] run data modify storage baba:main all_list append value {sprite:43355,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=43355},limit=1] run data modify storage baba:main words.noun append value {id:43355,text:"belt"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=46417},limit=1] run data modify storage baba:main all_list append value {sprite:46417,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=46417},limit=1] unless data storage baba:main all_list[{sprite:46417}] run data modify storage baba:main all_list append value {sprite:46417,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=46417},limit=1] run data modify storage baba:main words.noun append value {id:46417,text:"bird"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=2032},limit=1] run data modify storage baba:main all_list append value {sprite:2032,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=2032},limit=1] unless data storage baba:main all_list[{sprite:2032}] run data modify storage baba:main all_list append value {sprite:2032,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=2032},limit=1] run data modify storage baba:main words.noun append value {id:2032,text:"bug"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=72200},limit=1] run data modify storage baba:main all_list append value {sprite:72200,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=72200},limit=1] unless data storage baba:main all_list[{sprite:72200}] run data modify storage baba:main all_list append value {sprite:72200,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=72200},limit=1] run data modify storage baba:main words.noun append value {id:72200,text:"crab"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=266319164},limit=1] run data modify storage baba:main all_list append value {sprite:266319164,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=266319164},limit=1] unless data storage baba:main all_list[{sprite:266319164}] run data modify storage baba:main all_list append value {sprite:266319164,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=266319164},limit=1] run data modify storage baba:main words.noun append value {id:266319164,text:"rocket"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10329537},limit=1] run data modify storage baba:main all_list append value {sprite:10329537,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10329537},limit=1] unless data storage baba:main all_list[{sprite:10329537}] run data modify storage baba:main all_list append value {sprite:10329537,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10329537},limit=1] run data modify storage baba:main words.noun append value {id:10329537,text:"skull"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3889019},limit=1] run data modify storage baba:main all_list append value {sprite:3889019,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3889019},limit=1] unless data storage baba:main all_list[{sprite:3889019}] run data modify storage baba:main all_list append value {sprite:3889019,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3889019},limit=1] run data modify storage baba:main words.noun append value {id:3889019,text:"ghost"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=283292888},limit=1] run data modify storage baba:main all_list append value {sprite:283292888,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=283292888},limit=1] unless data storage baba:main all_list[{sprite:283292888}] run data modify storage baba:main all_list append value {sprite:283292888,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=283292888},limit=1] run data modify storage baba:main words.noun append value {id:283292888,text:"statue"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=50645},limit=1] run data modify storage baba:main all_list append value {sprite:50645,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=50645},limit=1] unless data storage baba:main all_list[{sprite:50645}] run data modify storage baba:main all_list append value {sprite:50645,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=50645},limit=1] run data modify storage baba:main words.noun append value {id:50645,text:"bolt"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=158575},limit=1] run data modify storage baba:main all_list append value {sprite:158575,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=158575},limit=1] unless data storage baba:main all_list[{sprite:158575}] run data modify storage baba:main all_list append value {sprite:158575,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=158575},limit=1] run data modify storage baba:main words.noun append value {id:158575,text:"hand"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1505},limit=1] run data modify storage baba:main all_list append value {sprite:1505,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1505},limit=1] unless data storage baba:main all_list[{sprite:1505}] run data modify storage baba:main all_list append value {sprite:1505,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1505},limit=1] run data modify storage baba:main words.noun append value {id:1505,text:"bat"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=39899228},limit=1] run data modify storage baba:main all_list append value {sprite:39899228,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=39899228},limit=1] unless data storage baba:main all_list[{sprite:39899228}] run data modify storage baba:main all_list append value {sprite:39899228,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=39899228},limit=1] run data modify storage baba:main words.noun append value {id:39899228,text:"bubble"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=2599},limit=1] run data modify storage baba:main all_list append value {sprite:2599,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=2599},limit=1] unless data storage baba:main all_list[{sprite:2599}] run data modify storage baba:main all_list append value {sprite:2599,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=2599},limit=1] run data modify storage baba:main words.noun append value {id:2599,text:"cog"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=772772},limit=1] run data modify storage baba:main all_list append value {sprite:772772,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=772772},limit=1] unless data storage baba:main all_list[{sprite:772772}] run data modify storage baba:main all_list append value {sprite:772772,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=772772},limit=1] run data modify storage baba:main words.noun append value {id:772772,text:"algae"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=126880},limit=1] run data modify storage baba:main all_list append value {sprite:126880,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=126880},limit=1] unless data storage baba:main all_list[{sprite:126880}] run data modify storage baba:main all_list append value {sprite:126880,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=126880},limit=1] run data modify storage baba:main words.noun append value {id:126880,text:"flag"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=8179},limit=1] run data modify storage baba:main all_list append value {sprite:8179,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=8179},limit=1] unless data storage baba:main all_list[{sprite:8179}] run data modify storage baba:main all_list append value {sprite:8179,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=8179},limit=1] run data modify storage baba:main words.noun append value {id:8179,text:"key"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=247730},limit=1] run data modify storage baba:main all_list append value {sprite:247730,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=247730},limit=1] unless data storage baba:main all_list[{sprite:247730}] run data modify storage baba:main all_list append value {sprite:247730,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=247730},limit=1] run data modify storage baba:main words.noun append value {id:247730,text:"love"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10419170},limit=1] run data modify storage baba:main all_list append value {sprite:10419170,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10419170},limit=1] unless data storage baba:main all_list[{sprite:10419170}] run data modify storage baba:main all_list append value {sprite:10419170,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10419170},limit=1] run data modify storage baba:main words.noun append value {id:10419170,text:"spike"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=15486},limit=1] run data modify storage baba:main all_list append value {sprite:15486,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=15486},limit=1] unless data storage baba:main all_list[{sprite:15486}] run data modify storage baba:main all_list append value {sprite:15486,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=15486},limit=1] run data modify storage baba:main words.noun append value {id:15486,text:"ufo"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=90090},limit=1] run data modify storage baba:main all_list append value {sprite:90090,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=90090},limit=1] unless data storage baba:main all_list[{sprite:90090}] run data modify storage baba:main all_list append value {sprite:90090,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=90090},limit=1] run data modify storage baba:main words.noun append value {id:90090,text:"door"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=92782899},limit=1] run data modify storage baba:main all_list append value {sprite:92782899,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=92782899},limit=1] unless data storage baba:main all_list[{sprite:92782899}] run data modify storage baba:main all_list append value {sprite:92782899,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=92782899},limit=1] run data modify storage baba:main words.noun append value {id:92782899,text:"flower"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=320763071},limit=1] run data modify storage baba:main all_list append value {sprite:320763071,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=320763071},limit=1] unless data storage baba:main all_list[{sprite:320763071}] run data modify storage baba:main all_list append value {sprite:320763071,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=320763071},limit=1] run data modify storage baba:main words.noun append value {id:320763071,text:"violet"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=234610470},limit=1] run data modify storage baba:main all_list append value {sprite:234610470,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=234610470},limit=1] unless data storage baba:main all_list[{sprite:234610470}] run data modify storage baba:main all_list append value {sprite:234610470,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=234610470},limit=1] run data modify storage baba:main words.noun append value {id:234610470,text:"pillar"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=365321},limit=1] run data modify storage baba:main all_list append value {sprite:365321,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=365321},limit=1] unless data storage baba:main all_list[{sprite:365321}] run data modify storage baba:main all_list append value {sprite:365321,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=365321},limit=1] run data modify storage baba:main words.noun append value {id:365321,text:"rock"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=400550},limit=1] run data modify storage baba:main all_list append value {sprite:400550,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=400550},limit=1] unless data storage baba:main all_list[{sprite:400550}] run data modify storage baba:main all_list append value {sprite:400550,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=400550},limit=1] run data modify storage baba:main words.noun append value {id:400550,text:"tile"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3558512},limit=1] run data modify storage baba:main all_list append value {sprite:3558512,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3558512},limit=1] unless data storage baba:main all_list[{sprite:3558512}] run data modify storage baba:main all_list append value {sprite:3558512,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3558512},limit=1] run data modify storage baba:main words.noun append value {id:3558512,text:"fruit"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=267233},limit=1] run data modify storage baba:main all_list append value {sprite:267233,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=267233},limit=1] unless data storage baba:main all_list[{sprite:267233}] run data modify storage baba:main all_list append value {sprite:267233,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=267233},limit=1] run data modify storage baba:main words.noun append value {id:267233,text:"moon"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=388602},limit=1] run data modify storage baba:main all_list append value {sprite:388602,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=388602},limit=1] unless data storage baba:main all_list[{sprite:388602}] run data modify storage baba:main all_list append value {sprite:388602,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=388602},limit=1] run data modify storage baba:main words.noun append value {id:388602,text:"star"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=406922},limit=1] run data modify storage baba:main all_list append value {sprite:406922,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=406922},limit=1] unless data storage baba:main all_list[{sprite:406922}] run data modify storage baba:main all_list append value {sprite:406922,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=406922},limit=1] run data modify storage baba:main words.noun append value {id:406922,text:"tree"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1887},limit=1] run data modify storage baba:main all_list append value {sprite:1887,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1887},limit=1] unless data storage baba:main all_list[{sprite:1887}] run data modify storage baba:main all_list append value {sprite:1887,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1887},limit=1] run data modify storage baba:main words.noun append value {id:1887,text:"box"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=125150},limit=1] run data modify storage baba:main all_list append value {sprite:125150,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=125150},limit=1] unless data storage baba:main all_list[{sprite:125150}] run data modify storage baba:main all_list append value {sprite:125150,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=125150},limit=1] run data modify storage baba:main words.noun append value {id:125150,text:"fire"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=139055},limit=1] run data modify storage baba:main all_list append value {sprite:139055,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=139055},limit=1] unless data storage baba:main all_list[{sprite:139055}] run data modify storage baba:main all_list append value {sprite:139055,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=139055},limit=1] run data modify storage baba:main words.noun append value {id:139055,text:"gate"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=5421922},limit=1] run data modify storage baba:main all_list append value {sprite:5421922,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=5421922},limit=1] unless data storage baba:main all_list[{sprite:5421922}] run data modify storage baba:main all_list append value {sprite:5421922,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=5421922},limit=1] run data modify storage baba:main words.noun append value {id:5421922,text:"jelly"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=358078},limit=1] run data modify storage baba:main all_list append value {sprite:358078,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=358078},limit=1] unless data storage baba:main all_list[{sprite:358078}] run data modify storage baba:main all_list append value {sprite:358078,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=358078},limit=1] run data modify storage baba:main words.noun append value {id:358078,text:"reed"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=380741},limit=1] run data modify storage baba:main all_list append value {sprite:380741,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=380741},limit=1] unless data storage baba:main all_list[{sprite:380741}] run data modify storage baba:main all_list append value {sprite:380741,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=380741},limit=1] run data modify storage baba:main words.noun append value {id:380741,text:"sign"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=14432},limit=1] run data modify storage baba:main all_list append value {sprite:14432,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=14432},limit=1] unless data storage baba:main all_list[{sprite:14432}] run data modify storage baba:main all_list append value {sprite:14432,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=14432},limit=1] run data modify storage baba:main words.noun append value {id:14432,text:"sun"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3612393},limit=1] run data modify storage baba:main all_list append value {sprite:3612393,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3612393},limit=1] unless data storage baba:main all_list[{sprite:3612393}] run data modify storage baba:main all_list append value {sprite:3612393,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3612393},limit=1] run data modify storage baba:main words.noun append value {id:3612393,text:"fungi"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=173297},limit=1] run data modify storage baba:main all_list append value {sprite:173297,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=173297},limit=1] unless data storage baba:main all_list[{sprite:173297}] run data modify storage baba:main all_list append value {sprite:173297,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=173297},limit=1] run data modify storage baba:main words.noun append value {id:173297,text:"husk"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=239874},limit=1] run data modify storage baba:main all_list append value {sprite:239874,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=239874},limit=1] unless data storage baba:main all_list[{sprite:239874}] run data modify storage baba:main all_list append value {sprite:239874,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=239874},limit=1] run data modify storage baba:main words.noun append value {id:239874,text:"leaf"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=11423},limit=1] run data modify storage baba:main all_list append value {sprite:11423,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=11423},limit=1] unless data storage baba:main all_list[{sprite:11423}] run data modify storage baba:main all_list append value {sprite:11423,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=11423},limit=1] run data modify storage baba:main words.noun append value {id:11423,text:"orb"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10986913},limit=1] run data modify storage baba:main all_list append value {sprite:10986913,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10986913},limit=1] unless data storage baba:main all_list[{sprite:10986913}] run data modify storage baba:main all_list append value {sprite:10986913,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10986913},limit=1] run data modify storage baba:main words.noun append value {id:10986913,text:"trees"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=60080},limit=1] run data modify storage baba:main all_list append value {sprite:60080,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=60080},limit=1] unless data storage baba:main all_list[{sprite:60080}] run data modify storage baba:main all_list append value {sprite:60080,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=60080},limit=1] run data modify storage baba:main words.noun append value {id:60080,text:"cake"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3341},limit=1] run data modify storage baba:main all_list append value {sprite:3341,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3341},limit=1] unless data storage baba:main all_list[{sprite:3341}] run data modify storage baba:main all_list append value {sprite:3341,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3341},limit=1] run data modify storage baba:main words.noun append value {id:3341,text:"dot"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=-1},limit=1] run data modify storage baba:main all_list append value {sprite:-1,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=-1},limit=1] unless data storage baba:main all_list[{sprite:-1}] run data modify storage baba:main all_list append value {sprite:-1,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=-1},limit=1] run data modify storage baba:main words.noun append value {id:-1,text:"foliage"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=365747},limit=1] run data modify storage baba:main all_list append value {sprite:365747,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=365747},limit=1] unless data storage baba:main all_list[{sprite:365747}] run data modify storage baba:main all_list append value {sprite:365747,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=365747},limit=1] run data modify storage baba:main words.noun append value {id:365747,text:"rose"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=94574},limit=1] run data modify storage baba:main all_list append value {sprite:94574,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=94574},limit=1] unless data storage baba:main all_list[{sprite:94574}] run data modify storage baba:main all_list append value {sprite:94574,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=94574},limit=1] run data modify storage baba:main words.noun append value {id:94574,text:"dust"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=97534954},limit=1] run data modify storage baba:main all_list append value {sprite:97534954,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=97534954},limit=1] unless data storage baba:main all_list[{sprite:97534954}] run data modify storage baba:main all_list append value {sprite:97534954,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=97534954},limit=1] run data modify storage baba:main words.noun append value {id:97534954,text:"fungus"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4679038},limit=1] run data modify storage baba:main all_list append value {sprite:4679038,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4679038},limit=1] unless data storage baba:main all_list[{sprite:4679038}] run data modify storage baba:main all_list append value {sprite:4679038,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4679038},limit=1] run data modify storage baba:main words.noun append value {id:4679038,text:"husks"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10506715},limit=1] run data modify storage baba:main all_list append value {sprite:10506715,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10506715},limit=1] unless data storage baba:main all_list[{sprite:10506715}] run data modify storage baba:main all_list append value {sprite:10506715,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=10506715},limit=1] run data modify storage baba:main words.noun append value {id:10506715,text:"stump"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=-2},limit=1] run data modify storage baba:main all_list append value {sprite:-2,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=-2},limit=1] unless data storage baba:main all_list[{sprite:-2}] run data modify storage baba:main all_list append value {sprite:-2,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=-2},limit=1] run data modify storage baba:main words.noun append value {id:-2,text:"starfish"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=955387723},limit=1] run data modify storage baba:main all_list append value {sprite:955387723,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=955387723},limit=1] unless data storage baba:main all_list[{sprite:955387723}] run data modify storage baba:main all_list append value {sprite:955387723,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=955387723},limit=1] run data modify storage baba:main words.noun append value {id:955387723,text:"blossom"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1842025},limit=1] run data modify storage baba:main all_list append value {sprite:1842025,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1842025},limit=1] unless data storage baba:main all_list[{sprite:1842025}] run data modify storage baba:main all_list append value {sprite:1842025,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1842025},limit=1] run data modify storage baba:main words.noun append value {id:1842025,text:"cloud"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3297353},limit=1] run data modify storage baba:main all_list append value {sprite:3297353,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3297353},limit=1] unless data storage baba:main all_list[{sprite:3297353}] run data modify storage baba:main all_list append value {sprite:3297353,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=3297353},limit=1] run data modify storage baba:main words.noun append value {id:3297353,text:"fence"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4075642},limit=1] run data modify storage baba:main all_list append value {sprite:4075642,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4075642},limit=1] unless data storage baba:main all_list[{sprite:4075642}] run data modify storage baba:main all_list append value {sprite:4075642,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4075642},limit=1] run data modify storage baba:main words.noun append value {id:4075642,text:"grass"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4353053},limit=1] run data modify storage baba:main all_list append value {sprite:4353053,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4353053},limit=1] unless data storage baba:main all_list[{sprite:4353053}] run data modify storage baba:main all_list append value {sprite:4353053,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=4353053},limit=1] run data modify storage baba:main words.noun append value {id:4353053,text:"hedge"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=6647},limit=1] run data modify storage baba:main all_list append value {sprite:6647,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=6647},limit=1] unless data storage baba:main all_list[{sprite:6647}] run data modify storage baba:main all_list append value {sprite:6647,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=6647},limit=1] run data modify storage baba:main words.noun append value {id:6647,text:"ice"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=243140},limit=1] run data modify storage baba:main all_list append value {sprite:243140,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=243140},limit=1] unless data storage baba:main all_list[{sprite:243140}] run data modify storage baba:main all_list append value {sprite:243140,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=243140},limit=1] run data modify storage baba:main words.noun append value {id:243140,text:"line"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=321926},limit=1] run data modify storage baba:main all_list append value {sprite:321926,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=321926},limit=1] unless data storage baba:main all_list[{sprite:321926}] run data modify storage baba:main all_list append value {sprite:321926,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=321926},limit=1] run data modify storage baba:main words.noun append value {id:321926,text:"pipe"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=269481740},limit=1] run data modify storage baba:main all_list append value {sprite:269481740,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=269481740},limit=1] unless data storage baba:main all_list[{sprite:269481740}] run data modify storage baba:main all_list append value {sprite:269481740,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=269481740},limit=1] run data modify storage baba:main words.noun append value {id:269481740,text:"rubble"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=453774},limit=1] run data modify storage baba:main all_list append value {sprite:453774,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=453774},limit=1] unless data storage baba:main all_list[{sprite:453774}] run data modify storage baba:main all_list append value {sprite:453774,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=453774},limit=1] run data modify storage baba:main words.noun append value {id:453774,text:"wall"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=12257559},limit=1] run data modify storage baba:main all_list append value {sprite:12257559,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=12257559},limit=1] unless data storage baba:main all_list[{sprite:12257559}] run data modify storage baba:main all_list append value {sprite:12257559,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=12257559},limit=1] run data modify storage baba:main words.noun append value {id:12257559,text:"water"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=237520},limit=1] run data modify storage baba:main all_list append value {sprite:237520,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=237520},limit=1] unless data storage baba:main all_list[{sprite:237520}] run data modify storage baba:main all_list append value {sprite:237520,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=237520},limit=1] run data modify storage baba:main words.noun append value {id:237520,text:"lava"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1870},limit=1] run data modify storage baba:main all_list append value {sprite:1870,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1870},limit=1] unless data storage baba:main all_list[{sprite:1870}] run data modify storage baba:main all_list append value {sprite:1870,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1870},limit=1] run data modify storage baba:main words.noun append value {id:1870,text:"bog"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1423829},limit=1] run data modify storage baba:main all_list append value {sprite:1423829,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1423829},limit=1] unless data storage baba:main all_list[{sprite:1423829}] run data modify storage baba:main all_list append value {sprite:1423829,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1423829},limit=1] run data modify storage baba:main words.noun append value {id:1423829,text:"brick"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1837248},limit=1] run data modify storage baba:main all_list append value {sprite:1837248,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1837248},limit=1] unless data storage baba:main all_list[{sprite:1837248}] run data modify storage baba:main all_list append value {sprite:1837248,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=1837248},limit=1] run data modify storage baba:main words.noun append value {id:1837248,text:"cliff"}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=54575550},limit=1] run data modify storage baba:main all_list append value {sprite:54575550,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={text=54575550},limit=1] unless data storage baba:main all_list[{sprite:54575550}] run data modify storage baba:main all_list append value {sprite:54575550,inverted:0b}
execute if entity @e[type=item_display,tag=baba.object,scores={sprite=54575550},limit=1] run data modify storage baba:main words.noun append value {id:54575550,text:"cursor"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=40150},limit=1] unless data storage baba:main words.noun[{id:40150}] run data modify storage baba:main words.noun append value {id:40150,text:"baba"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=220460},limit=1] unless data storage baba:main words.noun[{id:220460}] run data modify storage baba:main words.noun append value {id:220460,text:"keke"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=356},limit=1] unless data storage baba:main words.noun[{id:356}] run data modify storage baba:main words.noun append value {id:356,text:"me"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=9863066},limit=1] unless data storage baba:main words.noun[{id:9863066}] run data modify storage baba:main words.noun append value {id:9863066,text:"robot"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=43355},limit=1] unless data storage baba:main words.noun[{id:43355}] run data modify storage baba:main words.noun append value {id:43355,text:"belt"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=46417},limit=1] unless data storage baba:main words.noun[{id:46417}] run data modify storage baba:main words.noun append value {id:46417,text:"bird"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=2032},limit=1] unless data storage baba:main words.noun[{id:2032}] run data modify storage baba:main words.noun append value {id:2032,text:"bug"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=72200},limit=1] unless data storage baba:main words.noun[{id:72200}] run data modify storage baba:main words.noun append value {id:72200,text:"crab"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=266319164},limit=1] unless data storage baba:main words.noun[{id:266319164}] run data modify storage baba:main words.noun append value {id:266319164,text:"rocket"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10329537},limit=1] unless data storage baba:main words.noun[{id:10329537}] run data modify storage baba:main words.noun append value {id:10329537,text:"skull"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3889019},limit=1] unless data storage baba:main words.noun[{id:3889019}] run data modify storage baba:main words.noun append value {id:3889019,text:"ghost"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=283292888},limit=1] unless data storage baba:main words.noun[{id:283292888}] run data modify storage baba:main words.noun append value {id:283292888,text:"statue"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=50645},limit=1] unless data storage baba:main words.noun[{id:50645}] run data modify storage baba:main words.noun append value {id:50645,text:"bolt"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=158575},limit=1] unless data storage baba:main words.noun[{id:158575}] run data modify storage baba:main words.noun append value {id:158575,text:"hand"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1505},limit=1] unless data storage baba:main words.noun[{id:1505}] run data modify storage baba:main words.noun append value {id:1505,text:"bat"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=39899228},limit=1] unless data storage baba:main words.noun[{id:39899228}] run data modify storage baba:main words.noun append value {id:39899228,text:"bubble"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=2599},limit=1] unless data storage baba:main words.noun[{id:2599}] run data modify storage baba:main words.noun append value {id:2599,text:"cog"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=772772},limit=1] unless data storage baba:main words.noun[{id:772772}] run data modify storage baba:main words.noun append value {id:772772,text:"algae"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=126880},limit=1] unless data storage baba:main words.noun[{id:126880}] run data modify storage baba:main words.noun append value {id:126880,text:"flag"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=8179},limit=1] unless data storage baba:main words.noun[{id:8179}] run data modify storage baba:main words.noun append value {id:8179,text:"key"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=247730},limit=1] unless data storage baba:main words.noun[{id:247730}] run data modify storage baba:main words.noun append value {id:247730,text:"love"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10419170},limit=1] unless data storage baba:main words.noun[{id:10419170}] run data modify storage baba:main words.noun append value {id:10419170,text:"spike"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=15486},limit=1] unless data storage baba:main words.noun[{id:15486}] run data modify storage baba:main words.noun append value {id:15486,text:"ufo"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=90090},limit=1] unless data storage baba:main words.noun[{id:90090}] run data modify storage baba:main words.noun append value {id:90090,text:"door"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=92782899},limit=1] unless data storage baba:main words.noun[{id:92782899}] run data modify storage baba:main words.noun append value {id:92782899,text:"flower"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=320763071},limit=1] unless data storage baba:main words.noun[{id:320763071}] run data modify storage baba:main words.noun append value {id:320763071,text:"violet"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=234610470},limit=1] unless data storage baba:main words.noun[{id:234610470}] run data modify storage baba:main words.noun append value {id:234610470,text:"pillar"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=365321},limit=1] unless data storage baba:main words.noun[{id:365321}] run data modify storage baba:main words.noun append value {id:365321,text:"rock"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=400550},limit=1] unless data storage baba:main words.noun[{id:400550}] run data modify storage baba:main words.noun append value {id:400550,text:"tile"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3558512},limit=1] unless data storage baba:main words.noun[{id:3558512}] run data modify storage baba:main words.noun append value {id:3558512,text:"fruit"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=267233},limit=1] unless data storage baba:main words.noun[{id:267233}] run data modify storage baba:main words.noun append value {id:267233,text:"moon"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=388602},limit=1] unless data storage baba:main words.noun[{id:388602}] run data modify storage baba:main words.noun append value {id:388602,text:"star"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=406922},limit=1] unless data storage baba:main words.noun[{id:406922}] run data modify storage baba:main words.noun append value {id:406922,text:"tree"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1887},limit=1] unless data storage baba:main words.noun[{id:1887}] run data modify storage baba:main words.noun append value {id:1887,text:"box"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=125150},limit=1] unless data storage baba:main words.noun[{id:125150}] run data modify storage baba:main words.noun append value {id:125150,text:"fire"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=139055},limit=1] unless data storage baba:main words.noun[{id:139055}] run data modify storage baba:main words.noun append value {id:139055,text:"gate"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=5421922},limit=1] unless data storage baba:main words.noun[{id:5421922}] run data modify storage baba:main words.noun append value {id:5421922,text:"jelly"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=358078},limit=1] unless data storage baba:main words.noun[{id:358078}] run data modify storage baba:main words.noun append value {id:358078,text:"reed"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=380741},limit=1] unless data storage baba:main words.noun[{id:380741}] run data modify storage baba:main words.noun append value {id:380741,text:"sign"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=14432},limit=1] unless data storage baba:main words.noun[{id:14432}] run data modify storage baba:main words.noun append value {id:14432,text:"sun"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3612393},limit=1] unless data storage baba:main words.noun[{id:3612393}] run data modify storage baba:main words.noun append value {id:3612393,text:"fungi"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=173297},limit=1] unless data storage baba:main words.noun[{id:173297}] run data modify storage baba:main words.noun append value {id:173297,text:"husk"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=239874},limit=1] unless data storage baba:main words.noun[{id:239874}] run data modify storage baba:main words.noun append value {id:239874,text:"leaf"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=11423},limit=1] unless data storage baba:main words.noun[{id:11423}] run data modify storage baba:main words.noun append value {id:11423,text:"orb"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10986913},limit=1] unless data storage baba:main words.noun[{id:10986913}] run data modify storage baba:main words.noun append value {id:10986913,text:"trees"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=60080},limit=1] unless data storage baba:main words.noun[{id:60080}] run data modify storage baba:main words.noun append value {id:60080,text:"cake"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3341},limit=1] unless data storage baba:main words.noun[{id:3341}] run data modify storage baba:main words.noun append value {id:3341,text:"dot"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=-1},limit=1] unless data storage baba:main words.noun[{id:-1}] run data modify storage baba:main words.noun append value {id:-1,text:"foliage"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=365747},limit=1] unless data storage baba:main words.noun[{id:365747}] run data modify storage baba:main words.noun append value {id:365747,text:"rose"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=94574},limit=1] unless data storage baba:main words.noun[{id:94574}] run data modify storage baba:main words.noun append value {id:94574,text:"dust"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=97534954},limit=1] unless data storage baba:main words.noun[{id:97534954}] run data modify storage baba:main words.noun append value {id:97534954,text:"fungus"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4679038},limit=1] unless data storage baba:main words.noun[{id:4679038}] run data modify storage baba:main words.noun append value {id:4679038,text:"husks"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10506715},limit=1] unless data storage baba:main words.noun[{id:10506715}] run data modify storage baba:main words.noun append value {id:10506715,text:"stump"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=-2},limit=1] unless data storage baba:main words.noun[{id:-2}] run data modify storage baba:main words.noun append value {id:-2,text:"starfish"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=54575550},limit=1] unless data storage baba:main words.noun[{id:54575550}] run data modify storage baba:main words.noun append value {id:54575550,text:"cursor"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=262},limit=1] run data modify storage baba:main words.verb append value {id:262,text:"is"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1111},limit=1] run data modify storage baba:main words.and append value {id:1111,text:"and"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10631},limit=1] run data modify storage baba:main words.not append value {id:10631,text:"not"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=419},limit=1] run data modify storage baba:main words.infix append value {id:419,text:"on"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=279252},limit=1] run data modify storage baba:main words.infix append value {id:279252,text:"near"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=86690878},limit=1] run data modify storage baba:main words.infix append value {id:86690878,text:"facing"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=-5},limit=1] run data modify storage baba:main words.infix append value {id:-5,text:"without"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=5878},limit=1] run data modify storage baba:main words.verb append value {id:5878,text:"has"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=256910},limit=1] run data modify storage baba:main words.verb append value {id:256910,text:"make"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=12584543},limit=1] run data modify storage baba:main words.verb append value {id:12584543,text:"write"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1065},limit=1] run data modify storage baba:main words.noun append value {id:1065,text:"all"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=2925313},limit=1] run data modify storage baba:main words.noun append value {id:2925313,text:"empty"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=397973},limit=1] unless data storage baba:main words.noun[{id:397973}] run data modify storage baba:main words.noun append value {id:397973,text:"text"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=6491892},limit=1] unless data storage baba:main words.noun[{id:6491892}] run data modify storage baba:main words.noun append value {id:6491892,text:"level"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=18651},limit=1] run data modify storage baba:main words.property append value {id:18651,text:"you"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=330758},limit=1] run data modify storage baba:main words.property append value {id:330758,text:"push"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=330573},limit=1] run data modify storage baba:main words.property append value {id:330573,text:"pull"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=267413},limit=1] run data modify storage baba:main words.property append value {id:267413,text:"move"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10261586},limit=1] run data modify storage baba:main words.property append value {id:10261586,text:"shift"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=60174623},limit=1] run data modify storage baba:main words.property append value {id:60174623,text:"defeat"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=6257},limit=1] run data modify storage baba:main words.property append value {id:6257,text:"hot"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=259868},limit=1] run data modify storage baba:main words.property append value {id:259868,text:"melt"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=164138},limit=1] run data modify storage baba:main words.property append value {id:164138,text:"hide"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=17024},limit=1] run data modify storage baba:main words.property append value {id:17024,text:"win"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=388978},limit=1] run data modify storage baba:main words.property append value {id:388978,text:"stop"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=307058},limit=1] run data modify storage baba:main words.property append value {id:307058,text:"open"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=380396},limit=1] run data modify storage baba:main words.property append value {id:380396,text:"shut"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3435824},limit=1] run data modify storage baba:main words.property append value {id:3435824,text:"float"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=380927},limit=1] run data modify storage baba:main words.property append value {id:380927,text:"sink"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=456392},limit=1] run data modify storage baba:main words.property append value {id:456392,text:"weak"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=390787},limit=1] run data modify storage baba:main words.property append value {id:390787,text:"swap"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=397634},limit=1] run data modify storage baba:main words.property append value {id:397634,text:"tele"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=119163},limit=1] run data modify storage baba:main words.property append value {id:119163,text:"fall"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=267305},limit=1] run data modify storage baba:main words.property append value {id:267305,text:"more"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=13261},limit=1] run data modify storage baba:main words.property append value {id:13261,text:"red"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=48686},limit=1] run data modify storage baba:main words.property append value {id:48686,text:"blue"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=10337371},limit=1] run data modify storage baba:main words.property append value {id:10337371,text:"sleep"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4085899},limit=1] run data modify storage baba:main words.noun append value {id:4085899,text:"group"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=9748424},limit=1] run data modify storage baba:main words.property append value {id:9748424,text:"right"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=583},limit=1] run data modify storage baba:main words.property append value {id:583,text:"up"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=240023},limit=1] run data modify storage baba:main words.property append value {id:240023,text:"left"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=90302},limit=1] run data modify storage baba:main words.property append value {id:90302,text:"down"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=464134},limit=1] run data modify storage baba:main words.property append value {id:464134,text:"word"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=180392},limit=1] run data modify storage baba:main words.prefix append value {id:180392,text:"idle"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=180438055},limit=1] run data modify storage baba:main words.prefix append value {id:180438055,text:"lonely"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=8104442},limit=1] run data modify storage baba:main words.prefix append value {id:8104442,text:"often"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=275525968},limit=1] run data modify storage baba:main words.prefix append value {id:275525968,text:"seldom"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=275526380},limit=1] run data modify storage baba:main words.property append value {id:275526380,text:"select"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=43544},limit=1] run data modify storage baba:main words.property append value {id:43544,text:"best"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1368919},limit=1] run data modify storage baba:main words.property append value {id:1368919,text:"bonus"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4027},limit=1] run data modify storage baba:main words.property append value {id:4027,text:"end"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=90050},limit=1] run data modify storage baba:main words.property append value {id:90050,text:"done"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1842025},limit=1] unless data storage baba:main words.noun[{id:1842025}] run data modify storage baba:main words.noun append value {id:1842025,text:"cloud"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=3297353},limit=1] unless data storage baba:main words.noun[{id:3297353}] run data modify storage baba:main words.noun append value {id:3297353,text:"fence"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4075642},limit=1] unless data storage baba:main words.noun[{id:4075642}] run data modify storage baba:main words.noun append value {id:4075642,text:"grass"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=4353053},limit=1] unless data storage baba:main words.noun[{id:4353053}] run data modify storage baba:main words.noun append value {id:4353053,text:"hedge"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=6647},limit=1] unless data storage baba:main words.noun[{id:6647}] run data modify storage baba:main words.noun append value {id:6647,text:"ice"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=243140},limit=1] unless data storage baba:main words.noun[{id:243140}] run data modify storage baba:main words.noun append value {id:243140,text:"line"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=321926},limit=1] unless data storage baba:main words.noun[{id:321926}] run data modify storage baba:main words.noun append value {id:321926,text:"pipe"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=269481740},limit=1] unless data storage baba:main words.noun[{id:269481740}] run data modify storage baba:main words.noun append value {id:269481740,text:"rubble"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=453774},limit=1] unless data storage baba:main words.noun[{id:453774}] run data modify storage baba:main words.noun append value {id:453774,text:"wall"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=12257559},limit=1] unless data storage baba:main words.noun[{id:12257559}] run data modify storage baba:main words.noun append value {id:12257559,text:"water"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=237520},limit=1] unless data storage baba:main words.noun[{id:237520}] run data modify storage baba:main words.noun append value {id:237520,text:"lava"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1870},limit=1] unless data storage baba:main words.noun[{id:1870}] run data modify storage baba:main words.noun append value {id:1870,text:"bog"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1423829},limit=1] unless data storage baba:main words.noun[{id:1423829}] run data modify storage baba:main words.noun append value {id:1423829,text:"brick"}
execute if entity @e[type=item_display,tag=baba.object,scores={text=1837248},limit=1] unless data storage baba:main words.noun[{id:1837248}] run data modify storage baba:main words.noun append value {id:1837248,text:"cliff"}
data modify storage baba:main all_write_list set from storage baba:main all_list
data modify storage baba:main all_write_list[].write set value 1b
