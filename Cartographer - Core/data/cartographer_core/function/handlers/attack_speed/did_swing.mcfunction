execute store result score @s ca.attack_cooldown_total run attribute @s minecraft:attack_speed get 100

scoreboard players set $val ca.attack_cooldown_total 100000

scoreboard players operation $val ca.attack_cooldown_total /= @s ca.attack_cooldown_total

scoreboard players operation $val ca.attack_cooldown_total *= $20 ca.CONSTANT
scoreboard players operation $val ca.attack_cooldown_total /= $1000 ca.CONSTANT


scoreboard players operation @s ca.attack_cooldown_total = $val ca.attack_cooldown_total
scoreboard players operation @s ca.attack_cooldown_remaining = $val ca.attack_cooldown_total