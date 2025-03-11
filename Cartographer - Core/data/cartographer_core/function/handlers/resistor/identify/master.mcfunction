scoreboard players set $type ca.resistor_var 0

#type 1 is lava
execute if predicate cartographer_core:world/in_lava run scoreboard players set $type ca.resistor_var 1

#type 2 is sweet berry bush
execute if score @s ca.resistor_damage_amt matches ..10 if block ~ ~ ~ sweet_berry_bush run scoreboard players set $type ca.resistor_var 2

#type 3 is poison
execute if predicate cartographer_core:potion_effect/has_poison if score @s ca.resistor_damage_amt matches ..10 run scoreboard players set $type ca.resistor_var 3

#type 4 is wither
execute if predicate cartographer_core:potion_effect/has_wither if score @s ca.resistor_damage_amt matches ..10 run scoreboard players set $type ca.resistor_var 4

#type 5 is fall damage
execute if score @s ca.resistor_fall_damage matches 1.. run scoreboard players set $type ca.resistor_var 5

#type 6 is cactus
execute if score @s ca.resistor_damage_amt matches ..10 if block ~ ~-0.2 ~ cactus run scoreboard players set $type ca.resistor_var 6
execute if score @s ca.resistor_damage_amt matches ..10 if block ~0.35 ~ ~ cactus run scoreboard players set $type ca.resistor_var 6
execute if score @s ca.resistor_damage_amt matches ..10 if block ~-0.35 ~ ~ cactus run scoreboard players set $type ca.resistor_var 6
execute if score @s ca.resistor_damage_amt matches ..10 if block ~ ~ ~0.35 cactus run scoreboard players set $type ca.resistor_var 6
execute if score @s ca.resistor_damage_amt matches ..10 if block ~ ~ ~-0.35 cactus run scoreboard players set $type ca.resistor_var 6

#type 7 is drowning
execute unless score $type ca.resistor_var matches 1.. if score @s ca.resistor_damage_amt matches ..20 if entity @s[nbt={Air:0s}] run scoreboard players set $type ca.resistor_var 7

#type 9 is magma
execute if score @s ca.resistor_damage_amt matches ..10 if block ~ ~-0.2 ~ cactus run scoreboard players set $type ca.resistor_var 9

#type 10 is falling block
execute unless score $type ca.resistor_var matches 1.. positioned ~-0.5 ~ ~-0.5 if entity @e[type=falling_block,limit=1,dx=0,dy=1,dz=0] run scoreboard players set $type ca.resistor_var 10

#type 11 is powder snow
execute unless score $type ca.resistor_var matches 1.. if score @s ca.resistor_damage_amt matches ..10 if entity @s[nbt={TicksFrozen:140}] run scoreboard players set $type ca.resistor_var 11

#type 12 is being on fire
execute unless score $type ca.resistor_var matches 1.. if score @s ca.resistor_damage_amt matches ..10 if predicate cartographer_core:world/is_on_fire run scoreboard players set $type ca.resistor_var 12

#if no type has been specified we assume type 13 - explosion damage
execute unless score $type ca.resistor_var matches 1.. run scoreboard players set $type ca.resistor_var 13

function cartographer_core:handlers/resistor/process/calc_damage