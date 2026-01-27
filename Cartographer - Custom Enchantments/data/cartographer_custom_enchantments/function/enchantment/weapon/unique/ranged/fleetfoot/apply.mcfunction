data modify storage cartographer:custom_enchantments fleetfoot_item set value {}
data modify storage cartographer:custom_enchantments fleetfoot_item set from entity @s SelectedItem

scoreboard players operation $speed_mult ca.ench_fleetfoot_lvl = @s ca.ench_fleetfoot_main_lvl
scoreboard players operation $speed_mult ca.ench_fleetfoot_lvl *= $8 ca.CONSTANT
scoreboard players add $speed_mult ca.ench_fleetfoot_lvl 20

data modify storage cartographer:custom_enchantments fleetfoot_macro set value {}
data modify storage cartographer:custom_enchantments fleetfoot_data set value {speed_multiplier:0,can_sprint:true,interact_vibrations:true}

execute store result storage cartographer:custom_enchantments fleetfoot_data.speed_multiplier float 0.01 run scoreboard players get $speed_mult ca.ench_fleetfoot_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/fleetfoot/apply_macro with storage cartographer:custom_enchantments fleetfoot_macro