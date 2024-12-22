$execute as $(target) at @s if score duration= carto_event matches 2.. run gamemode spectator
$execute as $(target) at @s if score duration= carto_event matches 2.. run spectate $(traveler) @s

$execute as $(traveler) at @s if score duration= carto_event matches 6 run data merge entity @s {interpolation_duration:3,start_interpolation:0,transformation:[0.8000f,0.0000f,0.0000f,0.0000f,0.0000f,0.8000f,0.0000f,0.2000f,0.0000f,0.0000f,0.8000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}

$execute as $(target) at @s if score duration= carto_event matches 6 positioned $(x) $(y) $(z) facing entity $(target) feet positioned ^ ^2 ^1.5 facing $(x) $(y) $(z) run tp $(traveler) ~ ~ ~ ~ 40
$execute as $(target) at @s if score duration= carto_event matches 6 positioned $(x) $(y) $(z) run function carto_event:event/custom_ench/ambushing/moving/appear_vfx

$execute as $(target) at @s if score duration= carto_event matches 1 run gamemode $(previous_gamemode)
$execute as $(target) at @s if score duration= carto_event matches 1 run kill $(traveler)
$execute as $(target) at @s if score duration= carto_event matches 1 run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 2 70 normal
$execute as $(target) at @s if score duration= carto_event matches 1 run tag @s remove ca.is_ambushing
$execute as $(target) at @s if score duration= carto_event matches 1 run scoreboard players set @s ca.ambushing_safety 20
$execute positioned $(x) $(y) $(z) if score duration= carto_event matches 1 run function carto_event:event/custom_ench/ambushing/moving/end

return 1