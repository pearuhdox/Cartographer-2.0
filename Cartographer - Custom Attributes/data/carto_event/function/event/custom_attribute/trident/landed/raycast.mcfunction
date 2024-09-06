scoreboard players set $player_hit_check ca.custom_trident 0
scoreboard players remove @s ca.raycast 1

#particle enchanted_hit ~ ~ ~ 0 0 0 0 1 force
#particle enchanted_hit ^0.3 ^ ^ 0 0 0 0 1 force
#particle enchanted_hit ^-0.3 ^ ^ 0 0 0 0 1 force

execute unless block ~ ~ ~ #cartographer_core:can_raycast run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^0.3 ^ ^ as @a[dx=0,dy=0,dz=0] positioned ~-0.6 ~ ~-0.6 if entity @s[dx=0,dy=0,dz=0] at @s run function carto_event:event/custom_attribute/trident/landed/player_damage with storage carto_event current[-1].parameters
execute if score @s ca.raycast matches 1.. positioned ^-0.3 ^ ^ as @a[dx=0,dy=0,dz=0] positioned ~-0.6 ~ ~-0.6 if entity @s[dx=0,dy=0,dz=0] at @s run function carto_event:event/custom_attribute/trident/landed/player_damage with storage carto_event current[-1].parameters
execute if score @s ca.raycast matches 1.. as @a[dx=0,dy=0,dz=0] positioned ~-0.6 ~ ~-0.6 if entity @s[dx=0,dy=0,dz=0] at @s run function carto_event:event/custom_attribute/trident/landed/player_damage with storage carto_event current[-1].parameters

#execute if score $player_hit_check ca.custom_trident matches 1.. run scoreboard players set @s ca.raycast 0

execute if score @s ca.raycast matches 1.. positioned ^ ^ ^-0.05 run function carto_event:event/custom_attribute/trident/landed/raycast