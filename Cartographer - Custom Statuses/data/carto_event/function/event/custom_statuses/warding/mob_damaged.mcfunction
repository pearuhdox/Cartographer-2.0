$scoreboard players set $resist ca.warding_var $(resistance_percent)

scoreboard players operation $damage ca.warding_var = $mob_health_diff ca.warding_var
scoreboard players operation $damage ca.warding_var *= $resist ca.warding_var
scoreboard players operation $damage ca.warding_var /= $100 ca.CONSTANT

$scoreboard players set $cascade_hits ca.warding_var $(cascade_count)
scoreboard players operation $cascade_div ca.warding_var = $cascade_hits ca.warding_var
scoreboard players add $cascade_div ca.warding_var 1

scoreboard players operation $damage ca.warding_var /= $cascade_div ca.warding_var

scoreboard players operation @s ca.warding_var -= $damage ca.warding_var
scoreboard players set @s ca.resistor_queue 0

$scoreboard players set $cascade_time_org ca.warding_var $(cascade_time)
$scoreboard players set $cascade_time ca.warding_var $(cascade_time)
scoreboard players add $cascade_time ca.warding_var 1

execute store result storage cartographer:custom_statuses cascade_damage int 1 run scoreboard players get $damage ca.warding_var
execute store result storage cartographer:custom_statuses cascade_time int 1 run scoreboard players get $cascade_time ca.warding_var

execute unless entity @s[type=player] run playsound minecraft:entity.breeze.deflect hostile @a[distance=..16] ~ ~ ~ 1 1.25

execute if score $cascade_hits ca.warding_var matches 1.. run function carto_event:event/custom_statuses/warding/cascade_rec with storage cartographer:custom_statuses