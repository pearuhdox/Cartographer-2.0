
data modify storage cartographer:custom_enchantments quick_strike_item set value {}
data modify storage cartographer:custom_enchantments quick_strike_item set from entity @s SelectedItem

data remove storage cartographer:custom_enchantments quick_strike_item.components.minecraft:consumable

scoreboard players set $cdl_base ca.ench_quick_strike_lvl 10
scoreboard players operation $cdl_time ca.ench_quick_strike_lvl = @s ca.ench_quick_strike_lvl
#scoreboard players operation $cdl_time ca.ench_quick_strike_lvl *= $2 ca.CONSTANT
scoreboard players add $cdl_time ca.ench_quick_strike_lvl 1

scoreboard players operation $cdl_base ca.ench_quick_strike_lvl += $cdl_time ca.ench_quick_strike_lvl

execute store result storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.quick_strike_cooldown int 1 run scoreboard players get $cdl_base ca.ench_quick_strike_lvl

data modify storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.has_been_used set value 1b
data modify storage cartographer:custom_enchantments quick_strike_item.components.minecraft:custom_data.quick_strike_state set value 1b

data modify storage cartographer:custom_enchantments quick_strike_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments quick_strike_item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update