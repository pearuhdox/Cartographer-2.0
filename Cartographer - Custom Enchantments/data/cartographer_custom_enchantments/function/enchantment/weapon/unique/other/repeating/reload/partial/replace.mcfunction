

data modify storage cartographer_custom_enchantments:repeating visual.name set value {"fallback":"Crossbow","translate":"item.minecraft.crossbow","color":"aqua","italic":false}
execute if data storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_name
execute if data storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:repeating visual.name set from storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_name
execute unless data storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_name set from storage cartographer_custom_enchantments:repeating visual.name
data modify storage cartographer_custom_enchantments:repeating visual.min set from storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_data.repeating_ammo
execute store result score $max_ammo ca.ench_repeating_lvl run scoreboard players get @s ca.ench_repeating_lvl
execute store result storage cartographer_custom_enchantments:repeating visual.max int 1 run scoreboard players add $max_ammo ca.ench_repeating_lvl 1
function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/visual/get_name
data modify storage cartographer_custom_enchantments:repeating data.item.components.minecraft:custom_name set from storage cartographer_custom_enchantments:repeating visual.return

scoreboard players set $has_infinity ca.ench_repeating_lvl 0
execute if data storage cartographer_custom_enchantments:repeating data.item.components.minecraft:enchantments.minecraft:infinity run scoreboard players set $has_infinity ca.ench_repeating_lvl 1

execute unless score $has_infinity ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/reload/partial/take_arrows

playsound minecraft:block.chest.locked player @a[distance=..16] ~ ~ ~ 1 2

data remove storage cartographer_custom_enchantments:repeating data.item.Slot
data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:repeating data.item

execute if entity @s[tag=ca.ench_repeating_main] run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if entity @s[tag=ca.ench_repeating_offh] run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

scoreboard players set @s ca.repeating_reload_cdl 10
function carto_event:api/create_single_entity_event {event:"custom_ench/repeating/partial_reload",duration:10,delay:0,parameters:{},merge_behavior:"none"}

