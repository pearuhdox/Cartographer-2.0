summon marker ~ ~ ~ {Tags:["ca.projectile_checker","ca.registered","ca.new"]}

ride @e[type=marker,tag=ca.new,tag=ca.projectile_checker,limit=1,sort=nearest] mount @s

execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=!potion,tag=ca.has_status_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.projectile_hit set from storage cartographer:custom_statuses projectile
execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=potion,tag=ca.has_status_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.potion_land set from storage cartographer:custom_statuses projectile

execute if entity @s[type=#bb:arrow] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_arrow_tracker
execute if entity @s[type=potion] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_potion_tracker
execute if entity @s[type=potion,nbt={Item:{id:"minecraft:lingering_potion"}}] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_lingering


execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=potion,tag=ca.apply_status_potion_throw_self] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.apply_status_potion_throw_self
execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=potion,tag=ca.apply_status_potion_throw_target] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.apply_status_potion_throw_target

execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s remove ca.new


scoreboard players set $projectile_check ca.systems 20