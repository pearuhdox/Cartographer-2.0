execute store result storage cartographer_custom_statuses:grounded x int 1 run data get entity @s Pos[0]
execute store result storage cartographer_custom_statuses:grounded y int 1 run data get entity @s Pos[1]
execute store result storage cartographer_custom_statuses:grounded z int 1 run data get entity @s Pos[2]

function carto_event:event/custom_statuses/grounded/teleport/do with storage cartographer_custom_statuses:grounded