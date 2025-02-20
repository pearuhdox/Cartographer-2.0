execute positioned ^ ^ ^ facing ^0.2 ^ ^1 rotated ~ ~ positioned ^ ^ ^0.25 summon item_display run function carto_event:event/custom_ench/throwable/projectile/create with storage carto_event current[-1].parameters

scoreboard players remove $multishot ca.throwable_multishot 1

execute positioned ^ ^ ^ facing ^0.2 ^ ^1 rotated ~ ~ positioned ^ ^ ^ if score $multishot ca.throwable_multishot matches 1.. run function carto_event:event/custom_ench/throwable/projectile/multishot_left