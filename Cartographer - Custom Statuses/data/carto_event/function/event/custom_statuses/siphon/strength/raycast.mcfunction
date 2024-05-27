scoreboard players remove $siphon_raycast ca.raycast 1

particle dust{color:[1.000,0.780,0.000],scale:2.0} ~ ~ ~ 0 0 0 0 1 force

execute if entity @a[distance=..1.5] run scoreboard players set $siphon_raycast ca.raycast 0

execute if score $siphon_raycast ca.raycast matches 1.. positioned ^ ^ ^0.5 run function carto_event:event/custom_statuses/siphon/strength/raycast