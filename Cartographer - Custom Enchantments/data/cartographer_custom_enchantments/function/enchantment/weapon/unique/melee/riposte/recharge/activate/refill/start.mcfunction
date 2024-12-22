data modify storage cartographer_custom_enchantments:riposte items[0].components.minecraft:consumable set value {consume_seconds:1000,animation:"block",has_consume_particles:false}
data modify storage cartographer_custom_enchantments:riposte items[0].components.minecraft:custom_data.riposte_state set value 2b

data modify storage cartographer_custom_enchantments:riposte items[0].Slot set value 0b

playsound minecraft:item.shield.block player @s ~ ~ ~ 0.4 1.4

scoreboard players set $no_suppress ca.ench_riposte_lvl 1
