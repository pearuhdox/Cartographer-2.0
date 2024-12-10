$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 1.. run tag @s remove ca.quick_strike_processed
$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 1.. run scoreboard players remove @s ca.quick_strike_cooldown 1

$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 6 run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 1.5
$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 4 run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 1.6
$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 2 run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.5 1.7
$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 0 run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.3 2

$execute as $(target) at @s if score @s ca.quick_strike_cooldown matches 0 run return 0

return 1