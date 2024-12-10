
scoreboard players operation $damage ca.ench_ripper_lvl = @s ca.ripper_lvl
scoreboard players operation $damage ca.ench_ripper_lvl *= $200 ca.CONSTANT

scoreboard players operation $stuck ca.ench_ripper_lvl = $total_ct ca.stuck_count
scoreboard players remove $stuck ca.ench_ripper_lvl 1
scoreboard players operation $stuck ca.ench_ripper_lvl *= $50 ca.CONSTANT
scoreboard players add $stuck ca.ench_ripper_lvl 100

scoreboard players operation $damage ca.ench_ripper_lvl *= $stuck ca.ench_ripper_lvl
scoreboard players operation $damage ca.ench_ripper_lvl /= $100 ca.CONSTANT

data modify storage cartographer:custom_enchantments owner set from storage carto_event current[-1].parameters.owner

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_ripper_lvl
function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/damage with storage cartographer:custom_enchantments