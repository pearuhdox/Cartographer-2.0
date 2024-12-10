execute if score @s ca.ench_drilling_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/drilling/finish

execute if score @s ca.ench_excavator_lvl matches 1.. unless score @s ca.excavator_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/tool/excavator/start with storage ltos:main data

execute if score $collapse ca.ench_excavator_lvl matches 1.. unless score @s ca.excavator_cooldown matches 1.. run function cartographer_custom_enchantments:enchantment/tool/excavator/start with storage ltos:main data
scoreboard players set $collapse ca.ench_excavator_lvl 0
