data modify storage cartographer:custom_enchantments ambushing_item set value {}
data modify storage cartographer:custom_enchantments ambushing_item set from entity @s SelectedItem

data modify storage cartographer:custom_enchantments ambushing_item.components.minecraft:consumable set value {consume_seconds:1000,animation:"bow",has_consume_particles:false}
data modify storage cartographer:custom_enchantments ambushing_item.components.minecraft:custom_data.ambushing_applied set value 1b
data modify storage cartographer:custom_enchantments ambushing_item.components.minecraft:custom_data.ambushing_cooldown set value 0
data modify storage cartographer:custom_enchantments ambushing_item.components.minecraft:custom_data.ambushing_state set value 2b

data modify storage cartographer:custom_enchantments ambushing_item.components.minecraft:custom_data.allow_offhand set value 1b

data modify storage cartographer:custom_enchantments ambushing_item.Slot set value 0b

data modify block 4206900 0 4206900 Items set value []
data modify block 4206900 0 4206900 Items append from storage cartographer:custom_enchantments ambushing_item

loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]