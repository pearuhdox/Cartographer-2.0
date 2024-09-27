scoreboard players set $spawner_cause ca.ench_var 1

scoreboard players operation $previous ca.storm_stack = @s ca.storm_stack

scoreboard players add @s ca.storm_stack 800
function cartographer_custom_enchantments:enchantment/passive/storm/tier_up_player_vfx

scoreboard players set $used_storm ca.storm_stack 0
execute if score @s ca.storm_stack matches 10000.. run scoreboard players set $used_storm ca.storm_stack 1

execute if score $used_storm ca.storm_stack matches 1.. run scoreboard players set @s ca.storm_stack 0

execute if score $used_storm ca.storm_stack matches 1.. run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if score $used_storm ca.storm_stack matches 1.. run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5

execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/get_data

execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/get_position

execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/create_storm
scoreboard players set $used_storm ca.storm_stack 0

scoreboard players set $spawner_cause ca.ench_var 0
