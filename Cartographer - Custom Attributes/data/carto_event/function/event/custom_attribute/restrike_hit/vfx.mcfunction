execute store result score $rot ca.restrike_hit_var run random value 1..16


execute if score $rot ca.restrike_hit_var matches 1 rotated 45 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 2 rotated 90 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 3 rotated 135 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 4 rotated 180 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 5 rotated 225 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 6 rotated 270 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 7 rotated 315 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 8 rotated 360 10 positioned ^ ^ ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast

execute if score $rot ca.restrike_hit_var matches 9 rotated 45 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 10 rotated 90 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 11 rotated 135 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 12 rotated 180 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 13 rotated 225 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 14 rotated 270 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 15 rotated 315 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
execute if score $rot ca.restrike_hit_var matches 16 rotated 360 -10 positioned ^ ^-1 ^0.5 run function carto_event:event/custom_attribute/restrike_hit/raycast
