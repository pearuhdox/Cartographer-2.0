item replace entity 31182015-1691-4321-1989-151400000000 weapon.mainhand with air
item replace entity 31182015-1691-4321-1989-151400000000 weapon.offhand with air

item replace entity 31182015-1691-4321-1989-151400000000 armor.feet with air
item replace entity 31182015-1691-4321-1989-151400000000 armor.legs with air
item replace entity 31182015-1691-4321-1989-151400000000 armor.chest with air
item replace entity 31182015-1691-4321-1989-151400000000 armor.head with air

item replace entity 31182015-1691-4321-1989-151400000000 weapon.mainhand from entity @s weapon.mainhand
item replace entity 31182015-1691-4321-1989-151400000000 weapon.offhand from entity @s weapon.offhand

item replace entity 31182015-1691-4321-1989-151400000000 armor.feet from entity @s armor.feet
item replace entity 31182015-1691-4321-1989-151400000000 armor.legs from entity @s armor.legs
item replace entity 31182015-1691-4321-1989-151400000000 armor.chest from entity @s armor.chest
item replace entity 31182015-1691-4321-1989-151400000000 armor.head from entity @s armor.head

execute store result storage cartographer:core resistor.data.damage double 0.1 run scoreboard players get @s ca.resistor_damage_amt


scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.fragility_time = @s ca.fragility_time
scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.ethereal_time = @s ca.ethereal_time
scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.bulwark_time = @s ca.bulwark_time
scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.sidestep_time = @s ca.sidestep_time

scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.hardened_type = @s ca.hardened_type
scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.poise_active = @s ca.poise_active
scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.steadfast_active = @s ca.steadfast_active

scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.tenacity_stack = @s ca.tenacity_stack

scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.instability_type = @s ca.instability_type

scoreboard players operation 31182015-1691-4321-1989-151400000000 ca.ench_aggro_count = @s ca.ench_aggro_count


execute as 31182015-1691-4321-1989-151400000000 at @s run function cartographer_core:handlers/resistor/process/damage_macro with storage cartographer:core resistor.data

scoreboard players operation @s ca.resistor_queue = $damage_remaining ca.resistor_var