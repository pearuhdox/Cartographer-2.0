summon marker ~ ~ ~ {Tags:["ca.creeper_checker","ca.registered","ca.new"]}

ride @e[type=marker,tag=ca.new,tag=ca.creeper_checker,limit=1,sort=nearest] mount @s

execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.creeper_checker] run tag @s remove ca.new

scoreboard players add $creeper_check ca.systems 20