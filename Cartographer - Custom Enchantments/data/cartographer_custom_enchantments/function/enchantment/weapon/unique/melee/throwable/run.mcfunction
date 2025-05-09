execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/throwable/offhand unless data entity @s equipment.offhand.components."minecraft:custom_data".throwable_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/apply_offhand
execute if entity @s[type=player] if predicate cartographer_custom_enchantments:has/throwable/mainhand unless data entity @s SelectedItem.components."minecraft:custom_data".throwable_applied run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/apply

execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run tag @s add ca.indicator_cc
execute if entity @s[type=player] if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set @s ca.cc_time 4

execute if entity @s[type=player] if score @s ca.throwable_cooldown matches 1.. run scoreboard players remove @s ca.throwable_cooldown 1


execute unless entity @s[type=player] unless entity @s[tag=ca.has_custom_status_silenced] unless entity @s[tag=ca.mob_use_throwable] unless score @s ca.throwable_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s if entity @a[distance=4..16,gamemode=!spectator,gamemode=!creative] run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/mob_ai_wrapper with storage cartographer:custom_enchantments
execute unless entity @s[type=player] unless entity @s[tag=ca.mob_use_throwable] if score @s ca.throwable_cooldown matches 1.. if predicate cartographer_core:periodic_tick/20 at @s run scoreboard players remove @s ca.throwable_cooldown 1