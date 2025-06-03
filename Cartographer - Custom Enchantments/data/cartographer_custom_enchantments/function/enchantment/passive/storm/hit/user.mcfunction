execute if score @s ca.storm_stack matches 1500.. run scoreboard players set $used_storm ca.storm_stack 1

execute if score $used_storm ca.storm_stack matches 1.. run scoreboard players remove @s ca.storm_stack 1500

execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5

execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1.5 0.5

execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_main_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"SelectedItem",cat:"weapon",slot:"mainhand"}
execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_offh_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.offhand",cat:"weapon",slot:"offhand"}

execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_feet_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.feet",cat:"armor",slot:"feet"}
execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_legs_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.legs",cat:"armor",slot:"legs"}
execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_chest_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.chest",cat:"armor",slot:"chest"}
execute if entity @s[type=player] if score $used_storm ca.storm_stack matches 1.. if score @s ca.ench_storm_head_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.head",cat:"armor",slot:"head"}

execute if score $used_storm ca.storm_stack matches 1.. run scoreboard players operation $lvl ca.ench_storm_lvl = @s ca.ench_storm_lvl
execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/get_data

function cartographer_custom_enchantments:enchantment/passive/storm/hit_gain