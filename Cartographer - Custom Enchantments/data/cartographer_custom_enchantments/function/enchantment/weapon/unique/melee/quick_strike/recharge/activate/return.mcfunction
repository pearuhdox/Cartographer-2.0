data remove storage cartographer_custom_enchantments:quick_strike items[0].Slot
data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:quick_strike items[0]

$loot replace entity @s hotbar.$(slot) 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

execute if score $no_suppress ca.ench_quick_strike_lvl matches 0 run tag @s add ca.suppress_inv_update