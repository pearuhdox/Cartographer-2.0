playsound minecraft:entity.puffer_fish.blow_up hostile @a[distance=..16] ~ ~ ~ 1 0.5
scoreboard players set @s ca.stunned_direction 0

scoreboard players set @s ca.dazed_value 100
scoreboard players operation $div ca.dazed_value = duration= carto_event

scoreboard players operation @s ca.dazed_value /= $div ca.dazed_value
scoreboard players set @s ca.dazed_max 100
