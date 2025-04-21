$data modify storage cartographer_custom_enchantments:consumable visual.name set value {"fallback":"Repeatable Item","translate":"item.minecraft.$(macro)","color":"aqua","italic":false}
execute if data storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_name run data modify storage cartographer_custom_enchantments:consumable visual.name set from storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_name
execute if data storage cartographer_custom_enchantments:consumable items[0].components.minecraft:item_name run data modify storage cartographer_custom_enchantments:consumable visual.name set from storage cartographer_custom_enchantments:consumable items[0].components.minecraft:item_name

execute if data storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:consumable visual.name set from storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_data.repeating_name
execute unless data storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_data.repeating_name run data modify storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_data.repeating_name set from storage cartographer_custom_enchantments:consumable visual.name
data modify storage cartographer_custom_enchantments:consumable visual.min set from storage cartographer_custom_enchantments:consumable items[0].components.minecraft:custom_data.repeating_ammo

#Set Min Value
execute store result storage cartographer_custom_enchantments:consumable visual.min int 1 run scoreboard players get $use_count ca.ench_var

#Set Max Value
execute store result storage cartographer_custom_enchantments:consumable visual.max int 1 run scoreboard players get $use_max ca.ench_var


function cartographer_custom_enchantments:enchantment/weapon/unique/other/repeating/consumable/get_name
data modify storage cartographer_custom_enchantments:consumable data.item.components.minecraft:custom_name set from storage cartographer_custom_enchantments:consumable visual.return