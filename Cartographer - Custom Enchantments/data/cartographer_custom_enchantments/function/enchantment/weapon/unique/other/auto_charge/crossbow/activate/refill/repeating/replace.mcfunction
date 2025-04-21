execute if score $current_ammo_amount ca.ench_auto_charge_slot matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/other/auto_charge/crossbow/activate/refill/repeating/chamber

data modify storage cartographer_custom_enchantments:repeating visual.name set value {"fallback":"Crossbow","translate":"item.minecraft.crossbow","color":"aqua","italic":false}
execute if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name
execute if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_name
execute unless data storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_name set from storage cartographer_custom_enchantments:repeating visual.name
data modify storage cartographer_custom_enchantments:repeating visual.min set from storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_data.repeating_ammo
execute store result score $max_ammo ca.ench_auto_charge_slot run data get storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:enchantments.cartographer_custom_enchantments:weapon/unique/other/repeating
execute store result storage cartographer_custom_enchantments:repeating visual.max int 1 run scoreboard players add $max_ammo ca.ench_auto_charge_slot 1
function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/visual/get_name
data modify storage cartographer_custom_enchantments:auto_charge items[0].components.minecraft:custom_name set from storage cartographer_custom_enchantments:repeating visual.return

#function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/partial/take_arrows

playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 2