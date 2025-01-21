$execute as $(target) at @s if score duration= carto_event matches 40 run playsound minecraft:entity.breeze.idle_ground hostile @a[distance=..16] ~ ~ ~ 1 2

$execute if score duration= carto_event matches 39 as $(telegraph) at @s run function carto_event:event/custom_ench/repulsion/activate/telegraph_animation with storage carto_event current[-1].parameters

$execute as $(target) at @s if score duration= carto_event matches 30 run playsound minecraft:entity.breeze.inhale hostile @a[distance=..16] ~ ~ ~ 2 0.5

$execute if score duration= carto_event matches 5..40 as $(target) at @s as @a[distance=..$(size)] at @s run function carto_event:event/custom_ench/repulsion/activate/warning

$execute as $(target) at @s if score duration= carto_event matches 1.. positioned ~ ~1 ~ run particle dust{color:[1.0,0.7,0.7],scale:1.5} ~ ~ ~ 0.35 0.35 0.35 0 1 force

$execute if score duration= carto_event matches 1..37 as $(telegraph) at @s positioned as $(target) run tp @s ~ ~ ~ ~8 ~

$execute as $(target) at @s if score duration= carto_event matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/activate

$execute if score duration= carto_event matches 1 as $(telegraph) at @s run scoreboard players remove $count ca.entity_purge_var 1
$execute if score duration= carto_event matches 1 as $(telegraph) at @s run kill @s

return 1