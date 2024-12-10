data remove storage cartographer_custom_enchantments:scavenger items[0].Slot
data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:scavenger items[0]

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]


tag @s add ca.suppress_inv_update