scoreboard players operation $previous ca.storm_stack = @s ca.storm_stack

scoreboard players add @s ca.storm_stack 75

execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/storm/tier_up_vfx

execute if score @s ca.storm_stack matches 1500.. run scoreboard players set $used_storm ca.storm_stack 1

execute if score $used_storm ca.storm_stack matches 1.. run scoreboard players set @s ca.storm_stack 0

execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if score $used_storm ca.storm_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.breeze.hurt player @a[distance=..16] ~ ~ ~ 1.5 0.5

execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 0.65
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if score $used_storm ca.storm_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.breeze.hurt hostile @a[distance=..16] ~ ~ ~ 1.5 0.5


execute if score $used_storm ca.storm_stack matches 1.. run scoreboard players operation $lvl ca.ench_storm_lvl = @s ca.ench_storm_lvl
execute if score $used_storm ca.storm_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/storm/get_data