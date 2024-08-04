$execute as $(target) at @s if score @s ca.shielding_time matches 1.. run scoreboard players remove @s ca.shielding_time 1

$execute as $(target) at @s store result score $has_abs ca.shielding_time run data get entity @s AbsorptionAmount 10

$execute as $(target) at @s if entity @s[type=player] unless score $has_abs ca.shielding_time matches 1.. if score @s ca.shielding_time matches 1 run particle minecraft:glow ~ ~0.75 ~ 0.3 0.1 0.3 0 10 normal
$execute as $(target) at @s if entity @s[type=player] unless score $has_abs ca.shielding_time matches 1.. if score @s ca.shielding_time matches 1 run playsound minecraft:block.respawn_anchor.charge player @s ~ ~ ~ 0.35 2

$execute as $(target) at @s unless entity @s[type=player] unless score $has_abs ca.shielding_time matches 1.. if score @s ca.shielding_time matches 1 run particle minecraft:glow ~ ~0.75 ~ 0.3 0.4 0.3 0 20 normal
$execute as $(target) at @s unless entity @s[type=player] unless score $has_abs ca.shielding_time matches 1.. if score @s ca.shielding_time matches 1 run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..16] ~ ~ ~ 0.5 2
$execute as $(target) at @s unless entity @s[type=player] unless score $has_abs ca.shielding_time matches 1.. if score @s ca.shielding_time matches 1 anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#E5C863\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#E5E363\",\"italic\":false,\"text\":\"\\\\nShielding\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}


$execute as $(target) at @s unless score $has_abs ca.shielding_time matches 1.. run tag @s remove ca.ench_shielding_has_abs
return 1