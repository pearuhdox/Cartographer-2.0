tp @s ~ ~ ~ ~ ~

particle minecraft:poof ~ ~ ~ 0 0 0 0 1 force

tag @s add co_rotation_lock

data modify entity @s damage set from storage cartographer:custom_enchantments arrow_damage
data modify entity @s Owner set from storage cartographer:custom_enchantments owner_uuid
#data modify entity @s Air set value 1b

scoreboard players set @s co_send 14
scoreboard players set @s co_y 2

function motion:motion/push

tag @s remove co_rotation_lock
