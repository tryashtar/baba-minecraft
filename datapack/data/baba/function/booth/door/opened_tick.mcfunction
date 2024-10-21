# close the door if nobody is nearby
execute unless block 78 75 -148 barrier unless entity @a[x=78.5,y=74.0,z=-148.5,distance=..10,limit=1] run function baba:booth/door/close
