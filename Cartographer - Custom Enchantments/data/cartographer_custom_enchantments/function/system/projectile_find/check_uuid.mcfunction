$scoreboard players set $(owner) ca.uuid_check 0
scoreboard players set $success ca.uuid_check 0

execute on origin run scoreboard players set @s ca.uuid_check 1

$execute as $(owner) if score @s ca.uuid_check matches 1 run scoreboard players set $success ca.uuid_check 1

execute on origin run scoreboard players set @s ca.uuid_check 0

execute if score $success ca.uuid_check matches 1 run tag @s add ca.projectile_target_owned_enchantments