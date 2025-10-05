
execute if score $spawner_defenses charon.gmr matches 1.. store result score $delay cage.var run data get block ~0.5 ~0.5 ~0.5 Delay
execute if score $spawner_defenses charon.gmr matches 1.. run scoreboard players operation $delay_percent cage.var = $spawner_defenses charon.gmr
execute if score $spawner_defenses charon.gmr matches 1.. run scoreboard players operation $delay cage.var *= $delay_percent ca.CONSTANT
execute if score $spawner_defenses charon.gmr matches 1.. run scoreboard players operation $delay cage.var /= $100 ca.CONSTANT
execute if score $spawner_defenses charon.gmr matches 1.. store result block ~0.5 ~0.5 ~0.5 Delay short 1 run scoreboard players add $delay cage.var 1


particle minecraft:soul_fire_flame ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0.02 25 normal
playsound minecraft:entity.zombie.infect block @a[distance=..8] ~0.5 ~0.5 ~0.5 1 0.5

kill @s