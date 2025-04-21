tag @s add ca.infinity_restore_inv

function cartographer_core:pldata/read


# Start Mainhand
data modify storage i:internal working_it set value []
data modify storage i:internal temp set from storage cartographer:player_data main.working_data.infinity
function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/filter

# Do Offhand
data modify storage i:internal working_it2 set value []
data modify storage i:internal working_it2 append from storage cartographer:player_data main.working_data.infinity_equips.offhand
data modify storage i:internal working_it2[0].Slot set value 0b

# Do Backpack
execute if entity @s[tag=ca.infinity_entire_inv] run data modify storage i:internal working_it3 set value []
execute if entity @s[tag=ca.infinity_entire_inv] run data modify storage i:internal temp set from storage cartographer:player_data main.working_data.infinity
execute if entity @s[tag=ca.infinity_entire_inv] run function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/filter_inv


# Return to Offhand
data modify block 4206899 0 4206900 Items set from storage i:internal working_it2
item replace entity @s weapon.offhand with air
loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

# Return to Mainhand
data modify block 4206899 0 4206900 Items set from storage i:internal working_it
loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

data modify block 4206899 0 4206900 Items set value []

# Return to Backpack
execute if entity @s[tag=ca.infinity_entire_inv] run data modify block 4206899 0 4206900 Items set from storage i:internal working_it
execute if entity @s[tag=ca.infinity_entire_inv] run loot replace entity @s inventory.0 9 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if entity @s[tag=ca.infinity_entire_inv] run data modify block 4206899 0 4206900 Items set value []

tag @s add ca.force_inf_update
schedule function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/save_global 1t

tag @s remove ca.infinity_entire_inv

tag @s remove ca.infinity_restore_inv