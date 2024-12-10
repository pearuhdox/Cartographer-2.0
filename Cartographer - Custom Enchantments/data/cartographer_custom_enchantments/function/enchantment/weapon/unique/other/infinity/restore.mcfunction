tag @s add i.restore_inventory

function bb:lib/pldata/read


# Start Mainhand
data modify storage i:internal working_it set value []
data modify storage i:internal temp set from storage bbl:pldata sudo_root.working_data.infinity
function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/filter
data modify storage cartographer_custom_enchantments:infinity with_cdl set from storage i:internal working_it


# Do Offhand
data modify storage i:internal working_it2 set value []
data modify storage i:internal working_it2 append from storage bbl:pldata sudo_root.working_data.infinity[{Slot:-106b}]
data modify storage i:internal working_it2[0].Slot set value 0b


data modify block 4206899 0 4206900 Items set from storage i:internal working_it2
item replace entity @s weapon.offhand with air
loot replace entity @s weapon.offhand 1 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]



# Return to Mainhand
data modify block 4206899 0 4206900 Items set from storage i:internal working_it
loot replace entity @s hotbar.0 9 mine 4206899 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

data modify block 4206899 0 4206900 Items set value []


tag @s add ca.force_inf_update
schedule function cartographer_custom_enchantments:enchantment/weapon/unique/other/infinity/save_global 1t

tag @s remove i.restore_inventory