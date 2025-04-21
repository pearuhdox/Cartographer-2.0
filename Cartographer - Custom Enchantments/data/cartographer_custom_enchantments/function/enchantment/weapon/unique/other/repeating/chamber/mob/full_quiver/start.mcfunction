scoreboard players operation $remaining_ammo ca.ench_repeating_lvl = @s ca.ench_repeating_lvl
execute store result storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_ammo int 1 run scoreboard players add $remaining_ammo ca.ench_repeating_lvl 1 

playsound minecraft:block.chest.locked hostile @a[distance=..16] ~ ~ ~ 1 2

data modify storage cartographer_custom_enchantments:repeating mob_offhand set value {}
data modify storage cartographer_custom_enchantments:repeating mob_offhand set value {id:"minecraft:arrow",count:1}
#execute if data entity @s equipment.offhand run data modify storage cartographer_custom_enchantments:repeating mob_offhand set from entity @s equipment.offhand
#data modify storage cartographer_custom_enchantments:repeating mob_offhand.count set value 1

execute if score $remaining_ammo ca.ench_repeating_lvl matches 1.. run data modify storage cartographer_custom_enchantments:repeating return_item.components.minecraft:custom_data.repeating_quiver set value []
execute if score $remaining_ammo ca.ench_repeating_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/chamber/mob/full_quiver/recurse

data modify entity @s equipment.mainhand set from storage cartographer_custom_enchantments:repeating return_item