execute if score @s ca.inertia_movement matches 10.. run scoreboard players add @s ca.inertia_stack 1
execute if score @s ca.inertia_sprinting matches 10.. run scoreboard players add @s ca.inertia_stack 2

execute if score @s ca.inertia_attacks matches 1.. run scoreboard players add @s ca.inertia_stack 10

execute if score @s ca.inertia_swim matches 10.. run scoreboard players add @s ca.inertia_stack 2

execute if score @s ca.inertia_on_water_walk matches 4.. run scoreboard players add @s ca.inertia_stack 1
execute if score @s ca.inertia_under_water_walk matches 4.. run scoreboard players add @s ca.inertia_stack 1

execute if score @s ca.inertia_jump matches 1.. if score @s ca.inertia_sprinting matches 1.. run scoreboard players add @s ca.inertia_stack 20
execute if score @s ca.inertia_jump matches 1.. unless score @s ca.inertia_sprinting matches 1.. run scoreboard players add @s ca.inertia_stack 10

execute if score @s ca.inertia_stack matches 1001.. run scoreboard players set @s ca.inertia_stack 1000


function cartographer_custom_enchantments:enchantment/passive/inertia/reset