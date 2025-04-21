data modify storage cartographer:custom_enchantments projectile set value {}

execute unless entity @s[tag=ca.no_ench_calc] if entity @s[type=#bb:arrow] run function cartographer_custom_enchantments:register/get_arrow_item_data

execute unless entity @s[tag=ca.no_ench_calc] run function cartographer_custom_enchantments:register/add_player_enchants

#Do Various VFX on origin based on enchants
execute on origin if score @s ca.concentration_time matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/vfx


execute if entity @s[type=#bb:projectile,tag=!ca.custom_trident] on origin if score @s ca.ench_recoil_lvl matches 1.. unless score @s ca.draw_bow_time matches 1..10 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate_projectile
execute if entity @s[type=fishing_bobber] on origin if score @s ca.ench_recoil_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate_projectile

function cartographer_custom_enchantments:register/convert_to_data

#Start Repulsion Here For Ranged Mobs
execute on origin unless entity @s[type=player] at @s if score @s ca.ench_repulsion_lvl matches 1.. unless score @s ca.repulsion_cooldown matches 1.. unless score @s ca.repulsion_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate

scoreboard players set $arrow_owner_type ca.ench_var 0
execute on origin if entity @s[type=player] run scoreboard players set $arrow_owner_type ca.ench_var 1

#Add Grappling - Tag for checker
execute if score @s ca.ench_grappling_lvl matches 1.. run tag @s add ca.needs_checker
execute if score @s ca.ench_grappling_lvl matches 1.. run tag @s add ca.check_land

#Add Correction - Tag for checker
execute if score @s ca.ench_correction_lvl matches 1.. run tag @s add ca.needs_checker

#Add Ricochet - Tag for checker
execute if score @s ca.ench_ricochet_lvl matches 1.. run tag @s add ca.needs_checker
execute if score @s ca.ench_ricochet_lvl matches 1.. run tag @s add ca.check_land

#Add Barrage - Tag for checker
execute unless entity @s[tag=ca.custom_trident] unless entity @s[tag=ca.no_ench_calc] if score @s ca.ench_barrage_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barrage/setup_event
execute if score @s ca.ench_barrage_lvl matches 1.. run tag @s add ca.needs_checker
execute if score @s ca.ench_barrage_lvl matches 1.. run tag @s add ca.allow_damage_bypass

#Add Multishot - Tag for checker
execute unless entity @s[tag=ca.custom_trident] unless entity @s[tag=ca.no_ench_calc] unless entity @s[tag=ca.multishot_spawned] if score @s ca.ench_multishot_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/multishot/setup_event
execute if score @s ca.ench_multishot_lvl matches 1.. run tag @s add ca.needs_checker
execute if score $arrow_owner_type ca.ench_var matches 1.. if score @s ca.ench_multishot_lvl matches 1.. run tag @s add ca.allow_damage_bypass

#Add Repeating - Tag for checker
execute if score @s ca.ench_repeating_lvl matches 1.. run tag @s add ca.needs_checker
execute if score $arrow_owner_type ca.ench_var matches 1.. if score @s ca.ench_repeating_lvl matches 1.. run tag @s add ca.allow_damage_bypass

#Add Collapse - Tag for checker
execute if score @s ca.ench_collapse_lvl matches 1.. run tag @s add ca.needs_checker
execute if score @s ca.ench_collapse_lvl matches 1.. run tag @s add ca.check_land
execute if score @s ca.ench_collapse_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/get_mining_speed
execute if score @s ca.ench_collapse_lvl matches 1.. if entity @s[type=#bb:arrow] run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/get_mining_speed_arrow


execute if entity @s[type=#cartographer_core:potions] run tag @s add ca.has_enchant_data
execute if entity @s[type=snowball] run tag @s add ca.has_enchant_data

execute on origin run function gu:generate
data modify storage cartographer:custom_enchantments projectile.owner set from storage gu:main out
