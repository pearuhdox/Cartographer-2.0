

scoreboard players set $projectile_check ca.systems 20

execute if entity @s[tag=ca.check_land] if entity @s[nbt={inGround:1b}] run function cartographer_core:handlers/checkers/projectile_land

execute if score $custom_enchantments ca.installed matches 1.. unless entity @s[tag=ca.in_ground] run function cartographer_core:handlers/checkers/custom_enchantments/projectile