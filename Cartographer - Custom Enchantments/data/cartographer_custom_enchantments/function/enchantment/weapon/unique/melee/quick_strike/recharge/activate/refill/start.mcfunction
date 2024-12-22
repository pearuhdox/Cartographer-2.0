data modify storage cartographer_custom_enchantments:quick_strike items[0].components.minecraft:custom_data.quick_strike_state set value 2b

data modify storage cartographer_custom_enchantments:quick_strike items[0].Slot set value 0b

#playsound minecraft:entity.allay.item_thrown player @s ~ ~ ~ 0.8 0.75

scoreboard players set $no_suppress ca.ench_quick_strike_lvl 1
