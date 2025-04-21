#scoreboard players operation $block_ct ca.ench_excavator_lvl = @s ca.ench_excavator_lvl
#scoreboard players operation $block_ct ca.ench_excavator_lvl *= $2 ca.CONSTANT

#scoreboard players set $range ca.ench_excavator_lvl 400

#execute if score $custom_attributes ca.installed matches 1.. unless score @s ca.attr_aoe_size_value matches -2000000.. run scoreboard players operation $range ca.ench_excavator_lvl += @s ca.attr_aoe_size_value
#execute if score $custom_attributes ca.installed matches 1.. unless score @s ca.attr_aoe_size_percent matches -2000000.. run scoreboard players operation $range ca.ench_excavator_lvl *= @s ca.attr_aoe_size_percent
#execute if score $custom_attributes ca.installed matches 1.. unless score @s ca.attr_aoe_size_percent matches -2000000.. run scoreboard players operation $range ca.ench_excavator_lvl /= $100 ca.CONSTANT

#scoreboard players operation $range ca.ench_excavator_lvl /= $100 ca.CONSTANT

execute store result score $has_silk_touch ca.ench_excavator_lvl run data get entity @s SelectedItem.components."minecraft:enchantments".minecraft:silk_touch

function cartographer_custom_enchantments:enchantment/tool/excavator/allow_break with storage ltos:main data

scoreboard players set $layer ca.ench_excavator_lvl 0

execute if score $allow_excavator ca.ench_excavator_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/excavator/do_break