
data modify storage cartographer:custom_enchantments fleetfoot_item.components.minecraft:use_effects set from storage cartographer:custom_enchantments fleetfoot_data

execute store result storage cartographer:custom_enchantments fleetfoot_item.components.minecraft:custom_data.fleetfoot_applied byte 1 run scoreboard players get @s ca.ench_fleetfoot_main_lvl

data modify storage cartographer:custom_enchantments fleetfoot_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments fleetfoot_item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]