data modify storage cartographer_custom_enchantments:item_lock item set value {}
data modify storage cartographer_custom_enchantments:item_lock slot set value "feet"

execute if entity @s[type=player] run data modify storage cartographer_custom_enchantments:item_lock item set from entity @s equipment.feet
execute unless entity @s[type=player] run data modify storage cartographer_custom_enchantments:item_lock item set from entity @s equipment.feet

execute unless data storage cartographer_custom_enchantments:item_lock item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/locked if score $item_lock ca.ench_var matches 1 run function cartographer_custom_enchantments:enchantment/helper/item_lock/mech/lock_enchants
execute unless data storage cartographer_custom_enchantments:item_lock item.components.minecraft:enchantments.cartographer_custom_enchantments:curse/locked if score $item_lock ca.ench_var matches 2 run function cartographer_custom_enchantments:enchantment/helper/item_lock/mech/lock_item_equippable

data remove storage cartographer_custom_enchantments:item_lock item.Slot

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer_custom_enchantments:item_lock item

execute if entity @s[type=player] run loot replace entity @s armor.feet 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute unless entity @s[type=player] run data modify entity @s equipment.feet set from storage cartographer_custom_enchantments:item_lock item

execute if entity @s[type=player] run tag @s add ca.suppress_inv_update