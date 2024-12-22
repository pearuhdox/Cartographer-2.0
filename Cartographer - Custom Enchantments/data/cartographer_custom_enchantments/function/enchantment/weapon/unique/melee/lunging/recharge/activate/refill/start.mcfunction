data modify storage cartographer_custom_enchantments:lunging items[0].components.minecraft:consumable set value {consume_seconds:1000,animation:"bow",has_consume_particles:false}
data modify storage cartographer_custom_enchantments:lunging items[0].components.minecraft:custom_data.lunging_state set value 2b

data modify storage cartographer_custom_enchantments:lunging items[0].Slot set value 0b

playsound minecraft:item.trident.riptide_1 player @s ~ ~ ~ 0.8 2

scoreboard players set $no_suppress ca.ench_lunging_lvl 1
