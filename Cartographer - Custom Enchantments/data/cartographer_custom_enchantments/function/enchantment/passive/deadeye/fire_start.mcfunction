scoreboard players set $hit ca.ench_deadeye_lvl 0

scoreboard players set @s ca.raycast 0
$scoreboard players set $end ca.raycast $(raycast)

tag @s add ca.deadeye_owner

data modify storage cartographer:custom_enchantments custom_statuses set value {}
function cartographer_custom_enchantments:enchantment/passive/deadeye/custom_statuses/check_allow_status

$execute if entity @s[type=player] facing entity @n[type=#cartographer_core:affected_by_carto,distance=..$(length),tag=!ca.deadeye_cdl] eyes rotated ~ ~3 positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_raycast
$execute unless entity @s[type=player] facing entity @n[type=player,distance=5..$(length),tag=!ca.deadeye_cdl] eyes rotated ~ ~3 positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_projectile_mob

$execute unless score $hit ca.ench_deadeye_lvl matches 1.. if entity @s[type=player] as @n[type=#cartographer_core:affected_by_carto,distance=..$(length),tag=!ca.deadeye_cdl] at @s run function cartographer_custom_enchantments:enchantment/passive/deadeye/block_entity
$execute unless score $hit ca.ench_deadeye_lvl matches 1.. unless entity @s[type=player] as @n[type=player,distance=..$(length),tag=!ca.deadeye_cdl] at @s run function cartographer_custom_enchantments:enchantment/passive/deadeye/block_entity

tag @s remove ca.deadeye_owner

#execute if score $hit ca.ench_deadeye_lvl matches 1.. run playsound minecraft:entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 0.3 1.85
execute if score $hit ca.ench_deadeye_lvl matches 1.. run playsound minecraft:entity.breeze.shoot player @a[distance=..16] ~ ~ ~ 0.15 2
execute if score $hit ca.ench_deadeye_lvl matches 1.. run playsound minecraft:item.trident.throw player @a[distance=..16] ~ ~ ~ 0.3 2

scoreboard players remove $attempts ca.ench_deadeye_lvl 1
execute if score $hit ca.ench_deadeye_lvl matches 1.. run scoreboard players set $attempts ca.ench_deadeye_lvl 0

execute if score $attempts ca.ench_deadeye_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/deadeye/fire_start with storage cartographer:custom_enchantments