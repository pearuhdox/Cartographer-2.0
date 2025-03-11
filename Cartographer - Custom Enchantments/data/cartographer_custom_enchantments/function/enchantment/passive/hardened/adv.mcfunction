advancement revoke @s only cartographer_custom_enchantments:hardened_explosion

execute if score @s ca.ench_hardened_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/hardened/damage_type/blast

#function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"passive/",enchantment:"second_wind",type:"passive"}

#scoreboard players set $time ca.ethereal_time 3
#scoreboard players operation $time ca.ethereal_time *= @s ca.ench_ethereal_lvl

#execute if score $time ca.ethereal_time matches 51.. run scoreboard players set $time ca.ethereal_time 50
#scoreboard players add $time ca.ethereal_time 10

#scoreboard players operation @s ca.ethereal_time = $time ca.ethereal_time

#execute store result storage cartographer_custom_enchantments:macro time int 1 run scoreboard players get @s ca.ethereal_time
#function cartographer_custom_enchantments:enchantment/passive/ethereal/macro with storage cartographer_custom_enchantments:macro
