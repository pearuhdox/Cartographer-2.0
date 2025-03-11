$execute as $(target) at @s run scoreboard players set @s ca.damage $(damage)
$execute as $(target) at @s run scoreboard players operation @s ca.damage *= $10 ca.CONSTANT

$execute as $(target) at @s if entity @s[type=player] run damage @s $(real_damage) cartographer_core:true_damage by @s

$execute as $(target) at @s if entity @s[type=player] run function cartographer_core:helper/damage_player/apply_damage
$execute as $(target) at @s unless entity @s[type=player] run damage @s $(damage) cartographer_core:true_damage by @s

$execute as $(target) at @s run scoreboard players set @s ca.damage 0

$execute as $(target) at @s run playsound minecraft:entity.player.hurt_drown player @s ~ ~ ~ 0.75 1.5
$execute as $(target) at @s run playsound minecraft:entity.breeze.deflect player @s ~ ~ ~ 0.5 2

return 0