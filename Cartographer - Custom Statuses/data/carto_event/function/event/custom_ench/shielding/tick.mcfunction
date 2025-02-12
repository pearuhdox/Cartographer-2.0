$execute as $(target) at @s if score @s ca.shielding_time matches 1.. run scoreboard players remove @s ca.shielding_time 1


$execute as $(target) at @s unless score $has_abs ca.shielding_time matches 1.. run tag @s remove ca.ench_shielding_has_abs

$execute as $(target) at @s if score @s ca.shielding_time matches 0 run return 0
return 1