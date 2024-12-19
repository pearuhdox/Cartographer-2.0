execute store result score $easter_egg ca.stuck_count run random value 1..200
execute if score $easter_egg ca.stuck_count matches 1 run function carto_event:event/stuck_handler/custom_skin/lmao

#execute unless entity @s[tag=ca.player_spawned] run function carto_event:event/stuck_handler/custom_skin/enemy_default

#Any future custom skins go here