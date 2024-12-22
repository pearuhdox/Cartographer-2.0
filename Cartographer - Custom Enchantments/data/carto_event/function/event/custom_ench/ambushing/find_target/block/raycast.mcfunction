
scoreboard players remove @s ca.raycast 1

scoreboard players set $found ca.ench_ambushing_lvl 0

execute positioned ^ ^ ^0.5 if block ~ ~ ~ #cartographer_custom_enchantments:sensitive_to_ambushing align xyz positioned ~0.5 ~0.5 ~0.5 rotated ~ 25 run function carto_event:event/custom_ench/ambushing/find_target/block/found

execute if score $found ca.ench_ambushing_lvl matches 1.. run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^0.5 if block ~ ~ ~ #cartographer_core:can_raycast run function carto_event:event/custom_ench/ambushing/find_target/block/raycast