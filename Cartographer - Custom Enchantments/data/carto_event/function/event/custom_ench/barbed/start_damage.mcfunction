execute unless entity @s[type=player] run scoreboard players remove @s ca.barbed_stack 200
execute if entity @s[type=player] run scoreboard players remove @s ca.barbed_stack 400


scoreboard players operation $damage ca.ench_barbed_lvl = @s ca.barbed_lvl
scoreboard players operation $damage ca.ench_barbed_lvl *= $100 ca.CONSTANT

scoreboard players operation $stuck ca.ench_barbed_lvl = $total_ct ca.stuck_count
scoreboard players remove $stuck ca.ench_barbed_lvl 1
scoreboard players operation $stuck ca.ench_barbed_lvl *= $50 ca.CONSTANT
scoreboard players add $stuck ca.ench_barbed_lvl 100

scoreboard players operation $damage ca.ench_barbed_lvl *= $stuck ca.ench_barbed_lvl
scoreboard players operation $damage ca.ench_barbed_lvl /= $100 ca.CONSTANT

data modify storage cartographer:custom_enchantments owner set from storage carto_event current[-1].parameters.owner

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_barbed_lvl
function carto_event:event/custom_ench/barbed/damage with storage cartographer:custom_enchantments
