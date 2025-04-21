execute if score @s ca.lightborn_redstone_torch matches 1.. unless score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. run setblock ~ ~ ~ redstone_torch destroy
execute if score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. run setblock ~ ~ ~ soul_torch destroy
execute if score @s ca.lightborn_torch matches 1.. run setblock ~ ~ ~ torch destroy

execute if score @s ca.lightborn_redstone_torch matches 1.. unless score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 35 run function cartographer_custom_enchantments:enchantment/tool/lightborn/vfx
execute if score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 35 run function cartographer_custom_enchantments:enchantment/tool/lightborn/soul_vfx
execute if score @s ca.lightborn_torch matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 35 run function cartographer_custom_enchantments:enchantment/tool/lightborn/vfx

execute if score @s ca.lightborn_redstone_torch matches 1.. unless score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. run clear @s redstone_torch[minecraft:enchantments={}] 1
execute if score @s ca.lightborn_soul_torch matches 1.. unless score @s ca.lightborn_torch matches 1.. run clear @s soul_torch[minecraft:enchantments={}] 1
execute if score @s ca.lightborn_torch matches 1.. run clear @s torch[minecraft:enchantments={}] 1


playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 0.75

scoreboard players set @s ca.lightborn_cooldown 5
function carto_event:api/create_single_entity_event {event:"custom_ench/lightborn",duration:5,delay:0,parameters:{},merge_behavior:"none"}
function carto_event:api/create_single_entity_event {event:"custom_statuses/vanilla_attribute",duration:3,delay:0,parameters:{type:"minecraft:block_break_speed",tag:"ca.lightborn_block",id:"lightborn_block",value:-100,operation:"add_value",tick_command:""},merge_behavior:"none"}