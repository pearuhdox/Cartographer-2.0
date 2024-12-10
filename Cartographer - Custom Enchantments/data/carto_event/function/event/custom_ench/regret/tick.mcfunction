$execute as $(target) at @s run scoreboard players set @s bbl.damage_queue $(damage)

$execute as $(target) at @s if entity @s[type=player] run damage @s $(real_damage) cartographer_core:true_damage by @s

$execute as $(target) at @s if entity @s[type=player] run function bb:call/hpm/player/damage/true
$execute as $(target) at @s unless entity @s[type=player] run function bb:call/hpm/mob/damage/true

$execute as $(target) at @s run scoreboard players set @s bbl.damage_queue 0

$execute as $(target) at @s run playsound minecraft:entity.player.hurt_drown player @s ~ ~ ~ 0.75 1.5
$execute as $(target) at @s run playsound minecraft:entity.breeze.deflect player @s ~ ~ ~ 0.5 2

return 0