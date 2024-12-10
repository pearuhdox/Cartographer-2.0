playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 1 2

execute store result score @s ca.raycast run data get storage carto_event current[-1].parameters.size 2

scoreboard players add @s ca.raycast 1

execute positioned ^ ^1 ^ run function carto_event:event/custom_ench/thrusting/entity/vfx/recurse