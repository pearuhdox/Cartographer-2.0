execute if score @s ca.ench_inertia_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/inertia/attack

scoreboard players set $used_momentum ca.momentum_stack 0
execute if score @s ca.ench_momentum_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/momentum/hit/user

scoreboard players set $vengeance_damage ca.vengeance_stack 0
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack = @s ca.ench_vengeance_lvl
execute unless entity @s[tag=ca.used_vengeance_attack] if score @s ca.ench_vengeance_lvl matches 1.. if score @s ca.vengeance_stack matches 1.. run scoreboard players operation $vengeance_damage ca.vengeance_stack *= $2 ca.CONSTANT

scoreboard players set $check ca.gravity_var 0
scoreboard players set $damage ca.gravity_var 0
execute if entity @s[tag=ca.can_gravity] unless score @s ca.gravity_time matches 1.. run function cartographer_custom_enchantments:enchantment/passive/gravity/hit/user


scoreboard players set $proc ca.ench_starfall_lvl 0
execute if score @s ca.ench_starfall_lvl matches 1.. run scoreboard players set $proc ca.ench_starfall_lvl 100
execute if score @s ca.ench_starfall_lvl matches 1.. run scoreboard players operation $starfall ca.ench_value = @s ca.ench_starfall_lvl

scoreboard players set $proc ca.ench_orbit_lvl 0
execute if score @s ca.ench_orbit_lvl matches 1.. run scoreboard players set $proc ca.ench_orbit_lvl 100
execute if score @s ca.ench_orbit_lvl matches 1.. run scoreboard players operation $orbit ca.ench_value = @s ca.ench_orbit_lvl


scoreboard players set $proc ca.ench_eruption_lvl 0
execute if score @s ca.ench_eruption_lvl matches 1.. run scoreboard players set $proc ca.ench_eruption_lvl 1
execute if score @s ca.ench_eruption_lvl matches 1.. run scoreboard players operation $eruption ca.ench_value = @s ca.ench_eruption_lvl

scoreboard players set $proc ca.ench_soulfire_lvl 0
execute if score @s ca.ench_soulfire_lvl matches 1.. run scoreboard players set $proc ca.ench_soulfire_lvl 1
execute if score @s ca.ench_soulfire_lvl matches 1.. run scoreboard players operation $soulfire ca.ench_value = @s ca.ench_soulfire_lvl


execute if score @s ca.ench_recoil_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/activate