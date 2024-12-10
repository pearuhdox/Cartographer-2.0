execute store result score $rand ca.ench_barrage_lvl run random value 1..17

execute if score $rand ca.ench_barrage_lvl matches 1 positioned ^0.1 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 2 positioned ^-0.1 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 3 positioned ^ ^0.1 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 4 positioned ^ ^-0.1 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters

execute if score $rand ca.ench_barrage_lvl matches 5 positioned ^0.15 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 6 positioned ^-0.15 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 7 positioned ^ ^0.15 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 8 positioned ^ ^-0.15 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters

execute if score $rand ca.ench_barrage_lvl matches 9 positioned ^0.2 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 10 positioned ^-0.2 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 11 positioned ^ ^0.2 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 12 positioned ^ ^-0.2 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters

execute if score $rand ca.ench_barrage_lvl matches 13 positioned ^0.25 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 14 positioned ^-0.25 ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 15 positioned ^ ^0.25 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
execute if score $rand ca.ench_barrage_lvl matches 16 positioned ^ ^-0.25 ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters

execute if score $rand ca.ench_barrage_lvl matches 17 positioned ^ ^ ^ run function carto_event:event/custom_ench/barrage/create with storage carto_event current[-1].parameters
