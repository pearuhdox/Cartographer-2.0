execute unless items entity @s armor.body * run function cartographer_core:handlers/body_armor_handler/add_default

data modify storage cartographer:core fire_ignite set value {}
data modify storage cartographer:core fire_ignite.item set from entity @s equipment.body

data remove storage cartographer:core fire_ignite.item.components.minecraft:enchantments.cartographer_core:ignite

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:core fire_ignite.item

loot replace entity @s armor.body 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]