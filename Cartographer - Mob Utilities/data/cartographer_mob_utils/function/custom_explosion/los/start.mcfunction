tag @s add ca.check_explosion_los

$scoreboard players set $max ca.raycast $(range)
scoreboard players operation $max ca.raycast *= $10 ca.CONSTANT
scoreboard players set $dist ca.raycast 0
$execute as $(checker) at @s positioned ~ ~-$(scale) ~ positioned ~ ~0.2 ~ facing entity @a[limit=1,sort=nearest,tag=ca.check_explosion_los] feet positioned ^ ^ ^0.1 run function cartographer_mob_utils:custom_explosion/los/raycast
#$execute as $(checker) at @s if entity @s[tag=ca.can_hurt_hostiles] positioned ~ ~-$(scale) ~ positioned ~ ~0.2 ~ facing entity @e[limit=1,sort=nearest,tag=ca.check_explosion_los] feet positioned ^ ^ ^0.1 run function cartographer_mob_utils:custom_explosion/los/raycast

$scoreboard players set $falloff ca.explode_var $(falloff)
$scoreboard players set $range ca.explode_var $(range)
scoreboard players operation $falloff ca.explode_var *= $10 ca.CONSTANT
scoreboard players operation $range ca.explode_var *= $10 ca.CONSTANT

tag @s remove ca.check_explosion_los

$execute if score @s ca.explode_dist matches 1.. if score @s ca.explode_dist <= $falloff ca.explode_var at $(checker) positioned ~ ~-$(scale) ~ positioned ~ ~0.2 ~ run damage @s $(damage) $(type) at ~ ~ ~
$execute if score @s ca.explode_dist matches 1.. if score @s ca.explode_dist > $falloff ca.explode_var at $(checker) positioned ~ ~-$(scale) ~ positioned ~ ~0.2 ~ run function cartographer_mob_utils:custom_explosion/get_falloff_damage


$execute unless score @s ca.explode_dist matches 1.. at $(checker) positioned ~ ~-$(scale) ~ positioned ~ ~0.2 ~ run damage @s 1 $(type) at ~ ~ ~