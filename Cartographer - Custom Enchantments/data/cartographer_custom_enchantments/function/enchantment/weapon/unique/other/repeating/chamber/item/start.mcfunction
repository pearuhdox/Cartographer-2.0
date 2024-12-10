execute if score $remaining_ammo ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/item/quiver

execute unless score $remaining_ammo ca.ench_repeating_lvl matches 1.. run playsound minecraft:block.copper_door.close player @a[distance=..16] ~ ~ ~ 2 0.5

data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_name
data modify storage cartographer_custom_enchantments:repeating visual.min set from storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_ammo
execute store result score $max_ammo ca.ench_repeating_lvl run scoreboard players get @s ca.ench_repeating_lvl
execute store result storage cartographer_custom_enchantments:repeating visual.max int 1 run scoreboard players add $max_ammo ca.ench_repeating_lvl 1
function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/visual/get_name_chamber
data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_name set from storage cartographer_custom_enchantments:repeating visual.return


data remove storage cartographer_custom_enchantments:repeating return_item.Slot
data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:repeating return_item

$loot replace entity @s weapon.$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
