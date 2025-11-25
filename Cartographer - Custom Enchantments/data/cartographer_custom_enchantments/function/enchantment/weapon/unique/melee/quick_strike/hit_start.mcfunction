function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/unapply
scoreboard players operation @s ca.quick_strike_active = $active ca.quick_strike_active

execute if score $rat ca.installed matches 1.. run scoreboard players set @s ca.rat_time 1