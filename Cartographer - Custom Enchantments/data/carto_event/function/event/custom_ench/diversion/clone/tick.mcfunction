$execute if score duration= carto_event matches 1 as $(target) at @s run particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

$execute if score duration= carto_event matches 1 as $(target) at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 1 1.5

$execute if score duration= carto_event matches 1 as $(target) at @s run tp @s ~ -500 ~

return 1