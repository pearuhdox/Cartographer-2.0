tag @s add co_rotation_lock

scoreboard players set @s co_send -6
scoreboard players set @s co_y 3

$rotate @s facing entity $(victim)
function motion:motion/push

tag @s remove co_rotation_lock

playsound minecraft:entity.wind_charge.wind_burst player @a[distance=..12] ~ ~ ~ 0.75 1.5
particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

function cartographer_custom_statuses:apply_status/apply/set_target
execute if score $allow_statuses_target ca.ench_ambushing_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/ambushing/custom_statuses/status_target
