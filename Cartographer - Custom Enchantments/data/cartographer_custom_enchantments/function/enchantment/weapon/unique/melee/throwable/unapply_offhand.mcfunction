
data modify storage cartographer:custom_enchantments throwable_item set value {}
data modify storage cartographer:custom_enchantments throwable_item set from entity @s equipment.offhand

data remove storage cartographer:custom_enchantments throwable_item.components.minecraft:consumable

scoreboard players set $cdl_time ca.ench_throwable_lvl 12
scoreboard players operation $cdl_time ca.ench_throwable_lvl -= @s ca.ench_throwable_lvl
execute store result storage cartographer:custom_enchantments throwable_item.components.minecraft:custom_data.throwable_cooldown int 1 run scoreboard players get $cdl_time ca.ench_throwable_lvl

data modify storage cartographer:custom_enchantments throwable_item.components.minecraft:custom_data.has_been_thrown set value 1b
data modify storage cartographer:custom_enchantments throwable_item.components.minecraft:custom_data.throwable_state set value 1b

data modify storage cartographer:custom_enchantments throwable_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments throwable_item

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update