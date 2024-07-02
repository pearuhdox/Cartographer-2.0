summon marker ~ ~ ~ {Tags:["ca.projectile_checker","ca.registered","ca.new"]}

ride @e[type=marker,tag=ca.new,tag=ca.projectile_checker,limit=1,sort=nearest] mount @s

execute if score $custom_statuses ca.installed matches 1.. if entity @s[tag=ca.has_status_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.projectile_hit set from storage cartographer:custom_statuses projectile

execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s remove ca.new

scoreboard players set $projectile_check ca.systems 20