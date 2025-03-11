$execute as $(target) at @s positioned ~ ~1 ~ if predicate cartographer_core:periodic_tick/2 run particle minecraft:totem_of_undying ~ ~ ~ 0.35 0.35 0.35 0.05 1 normal

$execute as $(target) at @s run tag @s remove ca.defiance_immunity
$execute as $(target) at @s if score duration= carto_event matches 2.. run tag @s add ca.defiance_immunity

$execute as $(target) at @s if entity @s[type=player] positioned ~ ~1 ~ if score duration= carto_event matches 21.. run effect give @s resistance 1 4 true
$execute as $(target) at @s unless entity @s[type=player] positioned ~ ~1 ~ if score duration= carto_event matches 21.. run effect give @s resistance 1 2 true

$execute as $(target) at @s if score duration= carto_event matches 1.. run scoreboard players operation $mod ca.defiance_var = duration= carto_event
$execute as $(target) at @s if score duration= carto_event matches 1.. run scoreboard players operation $mod ca.defiance_var %= $20 ca.CONSTANT

$execute as $(target) at @s if entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break player @s ~ ~ ~ 1 0.5
$execute as $(target) at @s if entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break player @s ~ ~ ~ 1 0.5
$execute as $(target) at @s if entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break player @s ~ ~ ~ 1 0.5

$execute as $(target) at @s unless entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break hostile @a[distance=..16] ~ ~ ~ 1 0.5
$execute as $(target) at @s unless entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break hostile @a[distance=..16] ~ ~ ~ 1 0.5
$execute as $(target) at @s unless entity @s[type=player] if score $mod ca.defiance_var matches 1 run playsound minecraft:block.netherite_block.break hostile @a[distance=..16] ~ ~ ~ 1 0.5
$execute as $(target) at @s unless entity @s[type=player] if score $mod ca.defiance_var matches 1 run particle minecraft:totem_of_undying ~ ~1 ~ 0.15 0.15 0.15 0.25 15

$execute as $(target) at @s if score duration= carto_event matches 1 if score @s ca.defiance_bailout matches $(bailout).. if entity @s[type=player] run playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 0.6 2
$execute as $(target) at @s if score duration= carto_event matches 1 if score @s ca.defiance_bailout matches $(bailout).. unless entity @s[type=player] run playsound minecraft:entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 0.75 2

$execute as $(target) at @s if score duration= carto_event matches 1 unless score @s ca.defiance_bailout matches $(bailout).. if entity @s[type=player] run playsound minecraft:entity.blaze.death player @a[distance=..16] ~ ~ ~ 0.6 2
$execute as $(target) at @s if score duration= carto_event matches 1 unless score @s ca.defiance_bailout matches $(bailout).. unless entity @s[type=player] run playsound minecraft:entity.blaze.death hostile @a[distance=..16] ~ ~ ~ 0.6 2
$execute as $(target) at @s if score duration= carto_event matches 1 unless score @s ca.defiance_bailout matches $(bailout).. run damage @s 1024 cartographer_core:almost_true_damage


return 1