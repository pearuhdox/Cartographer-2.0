$rotate @s ~$(speed) ~

$execute if score $(owner) ca.orbit_bonus_speed matches 1.. at @s run rotate @s ~$(speed) ~

scoreboard players set @s ca.entity_purge_var 0