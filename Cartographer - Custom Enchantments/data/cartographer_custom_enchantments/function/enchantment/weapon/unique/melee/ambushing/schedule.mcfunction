#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set @s ca.ench_ambushing_lvl 0
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"ambushing",type:"weapon"}
#execute if entity @s[type=player,tag=ca.core_check_inv] unless score @s ca.core_delay_check matches 1.. run scoreboard players set $check ca.core_delay_check 1

execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/ambushing/offhand unless data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".ambushing_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/apply_offhand
execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/ambushing/mainhand unless data entity @s SelectedItem.components."minecraft:custom_data".ambushing_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/apply


execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set @s ca.ench_ambushing_lvl 0
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"weapon/unique/melee/",enchantment:"ambushing",type:"weapon"}
execute unless entity @s[type=player] if predicate cartographer_core:periodic_tick/20 run scoreboard players set $check ca.core_delay_check 1

execute unless entity @s[type=player] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s run scoreboard players set $has_target ca.ench_ambushing_lvl 0
execute unless entity @s[type=player] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s on target run scoreboard players set $has_target ca.ench_ambushing_lvl 1
execute unless entity @s[type=player] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s if entity @s[type=hoglin] run scoreboard players set $has_target ca.ench_ambushing_lvl 1

execute unless entity @s[type=player] unless entity @s[tag=has_custom_status_silenced] unless entity @s[tag=has_custom_status_grounded] unless entity @s[tag=ca.is_ambushing] unless score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s if entity @a[distance=6..24,gamemode=!spectator,gamemode=!creative] if score $has_target ca.ench_ambushing_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/mob_ai with storage cartographer:custom_enchantments
execute unless entity @s[type=player] unless entity @s[tag=ca.is_ambushing] if score @s ca.ambushing_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s run scoreboard players remove @s ca.ambushing_cooldown 1
