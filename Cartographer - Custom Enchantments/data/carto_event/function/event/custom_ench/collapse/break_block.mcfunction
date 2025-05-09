setblock 4206900 65 4206900 air replace
$setblock 4206900 65 4206900 $(block) replace

scoreboard players operation $eruption_hand ca.ench_value = @s ca.ench_eruption_main_lvl
scoreboard players operation $soulfire_hand ca.ench_value = @s ca.ench_soulfire_main_lvl

scoreboard players operation $aberration_hand ca.ench_value = @s ca.ench_aberration_main_lvl
scoreboard players operation $quake_hand ca.ench_value = @s ca.ench_quake_main_lvl
scoreboard players operation $starfall_hand ca.ench_value = @s ca.ench_starfall_main_lvl
scoreboard players operation $orbit_hand ca.ench_value = @s ca.ench_orbit_main_lvl
scoreboard players operation $storm_hand ca.ench_value = @s ca.ench_storm_main_lvl
scoreboard players operation $induction_hand ca.ench_value = @s ca.ench_induction_main_lvl


$execute if block 4206900 65 4206900 spawner if score $aberration_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/aberration/break_spawner
$execute if block 4206900 65 4206900 spawner if score $quake_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/quake/break_spawner
$execute if block 4206900 65 4206900 spawner if score $starfall_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/starfall/break_spawner
$execute if block 4206900 65 4206900 spawner if score $orbit_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/orbit/break_spawner
$execute if block 4206900 65 4206900 spawner if score $storm_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/storm/break_spawner
$execute if block 4206900 65 4206900 spawner if score $induction_hand ca.ench_value matches 1.. as $(owner) run function cartographer_custom_enchantments:enchantment/passive/induction/break_spawner

scoreboard players set @s ca.ench_aberration_main_lvl 0
scoreboard players set @s ca.ench_quake_main_lvl 0
scoreboard players set @s ca.ench_starfall_main_lvl 0
scoreboard players set @s ca.ench_orbit_main_lvl 0
scoreboard players set @s ca.ench_storm_main_lvl 0
scoreboard players set @s ca.ench_induction_main_lvl 0

execute run loot spawn ~ ~ ~ mine ~ ~ ~ netherite_pickaxe
setblock ~ ~ ~ air replace


$particle minecraft:block{block_state:{Name:"$(block)"}} ~ ~ ~ 0.3 0.3 0.3 2 40 normal

playsound minecraft:block.stone.break player @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:block.ender_chest.close player @a[distance=..16] ~ ~ ~ 0.35 1.25

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force


execute if block 4206900 65 4206900 spawner run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:29}

execute if block 4206900 65 4206900 minecraft:nether_gold_ore run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute if block 4206900 65 4206900 #minecraft:coal_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute if block 4206900 65 4206900 #minecraft:diamond_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute if block 4206900 65 4206900 #minecraft:emerald_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute if block 4206900 65 4206900 #minecraft:lapis_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}
execute if block 4206900 65 4206900 minecraft:nether_quartz_ore run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}
execute if block 4206900 65 4206900 #minecraft:redstone_ores run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:3}

execute if block 4206900 65 4206900 minecraft:sculk run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:1}
execute if block 4206900 65 4206900 minecraft:sculk_sensor run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute if block 4206900 65 4206900 minecraft:sculk_shrieker run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}
execute if block 4206900 65 4206900 minecraft:sculk_catalyst run function cartographer_custom_enchantments:enchantment/helper/tool/generate_xp {size:5}

$execute if block 4206900 65 4206900 spawner as $(owner) at @s run tag @s remove ca.eruption_used_spawner
$execute if block 4206900 65 4206900 spawner as $(owner) at @s run tag @s remove ca.soulfire_used_spawner