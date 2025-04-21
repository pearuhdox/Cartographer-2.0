data modify storage cartographer_custom_enchantments:item_lock item set value {}

execute if entity @s[type=player] run data modify storage cartographer_custom_enchantments:item_lock item set from entity @s equipment.chest
execute unless entity @s[type=player] run data modify storage cartographer_custom_enchantments:item_lock item set from entity @s equipment.chest

execute if data storage cartographer_custom_enchantments:item_lock item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/locked if score $item_lock ca.ench_var matches 1 run function cartographer_custom_enchantments:enchantment/helper/item_lock/mech/unlock_enchants
execute if data storage cartographer_custom_enchantments:item_lock item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/locked if score $item_lock ca.ench_var matches 2 run function cartographer_custom_enchantments:enchantment/helper/item_lock/mech/unlock_item

data remove storage cartographer_custom_enchantments:item_lock item.Slot

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:item_lock item

execute if entity @s[type=player] run loot replace entity @s armor.chest 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute unless entity @s[type=player] run data modify entity @s equipment.chest set from storage cartographer_custom_enchantments:item_lock item

execute if entity @s[type=player] run tag @s add ca.suppress_inv_update