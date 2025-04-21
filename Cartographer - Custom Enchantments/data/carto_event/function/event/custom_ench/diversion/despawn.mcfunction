particle minecraft:poof ~ ~0.9 ~ 0.2 0 0.2 0.05 4 normal

playsound minecraft:entity.shulker_bullet.hurt player @a[distance=..12] ~ ~0.9 ~ 0.5 1.5
playsound minecraft:item.ominous_bottle.dispose player @a[distance=..12] ~ ~ ~ 0.5 0.5

data modify entity @s equipment set value {}

scoreboard players remove $count ca.entity_purge_var 1

tp @s ~ ~1 ~
$damage @s 1024 player_attack by $(owner)