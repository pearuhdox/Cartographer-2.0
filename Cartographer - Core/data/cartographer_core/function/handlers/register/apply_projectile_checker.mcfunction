execute unless entity @s[type=fishing_bobber] run summon marker ~ ~ ~ {Tags:["ca.projectile_checker","ca.registered","ca.new"]}

ride @e[type=marker,tag=ca.new,tag=ca.projectile_checker,limit=1,sort=nearest] mount @s

execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=!#cartographer_core:potions,tag=ca.has_status_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.projectile_hit set from storage cartographer:custom_statuses projectile
execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_status_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.potion_land set from storage cartographer:custom_statuses projectile

execute if score $custom_attributes ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_attribute_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.attr_data.potion_attr set from storage cartographer:custom_attributes projectile

execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_enchant_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.enchant_data set from storage cartographer:custom_enchantments projectile
execute if score $custom_enchantments ca.installed matches 1.. if entity @s[type=snowball,tag=ca.has_enchant_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.enchant_data set from storage cartographer:custom_enchantments projectile

execute if score $custom_attributes ca.installed matches 1.. if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_attribute_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.projectile_hit.radius set from entity @s data.attr_data.potion_attr.radius
execute if score $custom_attributes ca.installed matches 1.. if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_attribute_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.enchant_data.radius set from entity @s data.attr_data.potion_attr.radius

execute unless score $custom_attributes ca.installed matches 1.. if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_attribute_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.status_data.projectile_hit.radius set value 4.0d
execute unless score $custom_attributes ca.installed matches 1.. if score $custom_enchantments ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.has_attribute_data] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.enchant_data.radius set value 4.0d

execute if entity @s[type=fishing_bobber] run function carto_event:api/create_single_entity_event {event:"fishing_bobber",duration:600,delay:0,parameters:{},merge_behavior:"none"}
execute if entity @s[type=fishing_bobber] run function carto_event:event/fishing_bobber/apply_data_post with storage carto_event macro

execute if entity @s[type=#bb:arrow] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_arrow_tracker
execute if entity @s[type=splash_potion] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_potion_tracker
execute if entity @s[type=lingering_potion] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_lingering
execute if entity @s[type=fishing_bobber] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.is_fishing_bobber_tracker


execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.apply_status_potion_throw_self] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.apply_status_potion_throw_self
execute if score $custom_statuses ca.installed matches 1.. if entity @s[type=#cartographer_core:potions,tag=ca.apply_status_potion_throw_target] on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s add ca.apply_status_potion_throw_target

execute if entity @s[tag=ca.apply_status_potion_throw_self] run tag @s add ca.check_land
execute if entity @s[tag=ca.apply_status_potion_throw_target] run tag @s add ca.check_land

data modify storage cartographer:core owner set value []
data modify storage cartographer:core owner set from entity @s Owner

execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run data modify entity @s data.Owner set from storage cartographer:core owner
execute on passengers if entity @s[type=marker,tag=ca.new,tag=ca.projectile_checker] run tag @s remove ca.new

scoreboard players set $projectile_check ca.systems 20