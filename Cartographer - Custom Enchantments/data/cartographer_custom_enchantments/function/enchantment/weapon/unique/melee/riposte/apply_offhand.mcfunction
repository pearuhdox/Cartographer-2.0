data modify storage cartographer:custom_enchantments riposte_item set value {}
data modify storage cartographer:custom_enchantments riposte_item set from entity @s equipment.offhand

data modify storage cartographer:custom_enchantments riposte_item.components.minecraft:consumable set value {consume_seconds:1000,animation:"block",has_consume_particles:false}
data modify storage cartographer:custom_enchantments riposte_item.components.minecraft:custom_data.riposte_applied set value 1b
data modify storage cartographer:custom_enchantments riposte_item.components.minecraft:custom_data.riposte_state set value 2b
data modify storage cartographer:custom_enchantments riposte_item.components.minecraft:custom_data.riposte_cooldown set value 0

data modify storage cartographer:custom_enchantments riposte_item.components.minecraft:custom_data.allow_offhand set value 1b

data modify storage cartographer:custom_enchantments riposte_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments riposte_item

loot replace entity @s weapon.offhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.suppress_inv_update