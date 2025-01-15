$execute if score duration= carto_event matches 7 as $(target) at @s run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.75 1.5
$execute if score duration= carto_event matches 5 as $(target) at @s run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.75 1.6
$execute if score duration= carto_event matches 3 as $(target) at @s run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.75 1.7
$execute if score duration= carto_event matches 1 as $(target) at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.5 2

return 1