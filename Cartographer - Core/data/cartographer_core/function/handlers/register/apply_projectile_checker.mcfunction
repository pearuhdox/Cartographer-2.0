summon marker ~ ~ ~ {Tags:["ca.projectile_checker","ca.registered","ca.new"]}

ride @e[type=marker,tag=ca.new,tag=ca.projectile_checker,limit=1,sort=nearest] mount @s

execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s remove ca.new

scoreboard players set $projectile_check ca.systems 20