function cartographer_core:pldata/read

data modify storage cartographer_custom_enchantments:repeating refund set value {}
execute if entity @s[tag=ca.repeating_reloading_main] run data modify storage cartographer_custom_enchantments:repeating refund set from entity @s SelectedItem.components.minecraft:charged_projectiles[0]
execute if entity @s[tag=ca.repeating_reloading_offh] run data modify storage cartographer_custom_enchantments:repeating refund set from entity @s equipment.offhand.components.minecraft:charged_projectiles[0]

data modify storage cartographer_custom_enchantments:repeating visual.name set value {"fallback":"Crossbow","translate":"item.minecraft.crossbow","color":"aqua","italic":false}
execute if data storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_name
execute if data storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_name
execute unless data storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_name run data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_name set from storage cartographer_custom_enchantments:repeating visual.name
data modify storage cartographer_custom_enchantments:repeating visual.min set from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_data.repeating_ammo
execute store result score $max_ammo ca.ench_repeating_lvl run scoreboard players get @s ca.ench_repeating_lvl
execute store result storage cartographer_custom_enchantments:repeating visual.max int 1 run scoreboard players add $max_ammo ca.ench_repeating_lvl 1
function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/visual/get_name
data modify storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:custom_name set from storage cartographer_custom_enchantments:repeating visual.return

function cartographer_core:pldata/write

scoreboard players set $has_infinity ca.ench_repeating_lvl 0
execute if data storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.components.minecraft:enchantments.minecraft:infinity run scoreboard players set $has_infinity ca.ench_repeating_lvl 1

execute unless score $has_infinity ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/take_arrows

execute unless score $has_infinity ca.ench_repeating_lvl matches 1.. unless score @s ca.repeating_avail_ammo < $ammo_taken ca.repeating_avail_ammo run summon item ~ ~ ~ {Tags:["ca.repeating_refund"],Item:{id:"minecraft:stone",count:1}}
execute unless score $has_infinity ca.ench_repeating_lvl matches 1.. unless score @s ca.repeating_avail_ammo < $ammo_taken ca.repeating_avail_ammo as @e[type=item,sort=nearest,limit=1,distance=..1,tag=ca.repeating_refund] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/single/replace_refund

playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 2


function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/data/start

data remove storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item.Slot
data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:player_data main.working_data.cartographer.enchants.repeating.returned_item

execute if entity @s[tag=ca.repeating_reloading_main] run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if entity @s[tag=ca.repeating_reloading_offh] run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]


tag @s remove ca.repeating_reloading_main
tag @s remove ca.repeating_reloading_offh

tag @s remove ca.repeating_loaded_arrow