scoreboard players set @s ca.ench_explosive_lvl 0
scoreboard players set @s ca.ench_explosive_hand_lvl 0

data modify storage cartographer:enchantment_data equipped set value {}

data modify storage cartographer:enchantment_data equipped.feet set from entity @s Inventory[{Slot:100b}]
data modify storage cartographer:enchantment_data equipped.legs set from entity @s Inventory[{Slot:101b}]
data modify storage cartographer:enchantment_data equipped.body set from entity @s Inventory[{Slot:102b}]
data modify storage cartographer:enchantment_data equipped.head set from entity @s Inventory[{Slot:103b}]

data modify storage cartographer:enchantment_data equipped.offh set from entity @s Inventory[{Slot:-106b}]
data modify storage cartographer:enchantment_data equipped.main set from entity @s SelectedItem


execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.feet.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += $temp ca.ench_var
#execute if score $temp ca.ench_var matches 1.. run scoreboard players operation $was_$(slot) ca.calc_type += $temp ca.ench_var

execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.legs.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += $temp ca.ench_var

execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.body.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += $temp ca.ench_var

execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.head.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += $temp ca.ench_var

execute store result score $temp ca.ench_var run data get storage cartographer:enchantment_data equipped.offh.components.minecraft:enchantments.levels.cartographer_custom_enchantments:weapon/unique/general/explosive
execute if score $temp ca.ench_var matches 1.. run scoreboard players operation @s ca.ench_explosive_lvl += $temp ca.ench_var

say calc

advancement revoke @s only cartographer_custom_enchantments:enchant_calculation/weapon/unique/explosive