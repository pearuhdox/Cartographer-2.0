execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/ambushing/offhand unless data entity @s equipment.offhand.components."minecraft:custom_data".ambushing_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/apply_offhand
execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/ambushing/mainhand unless data entity @s SelectedItem.components."minecraft:custom_data".ambushing_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/apply

execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_grounded] run tag @s add ca.indicator_cc
execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_grounded] run scoreboard players set @s ca.cc_time 4

execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.indicator_cc
execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set @s ca.cc_time 4


execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s run scoreboard players set $has_target ca.ench_ambushing_lvl 0
execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s on target run scoreboard players set $has_target ca.ench_ambushing_lvl 1
execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s if entity @s[type=hoglin] run scoreboard players set $has_target ca.ench_ambushing_lvl 1

execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s if entity @a[distance=6..24,gamemode=!spectator,gamemode=!creative] if score $has_target ca.ench_ambushing_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/mob_ai with storage cartographer:custom_enchantments
execute unless entity @s[type=player] unless entity @s[tag=ca.is_ambushing] if score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s run scoreboard players remove @s ca.ambushing_cooldown 1