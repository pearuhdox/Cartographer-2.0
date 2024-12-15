execute store result score $easter_egg ca.collapse_time run random value 1..200
execute if score $easter_egg ca.collapse_time matches 1 run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/custom_skin/prism_sphere

#execute unless entity @s[tag=ca.player_spawned] run function carto_event:event/stuck_handler/custom_skin/enemy_default

#Any future custom skins go here