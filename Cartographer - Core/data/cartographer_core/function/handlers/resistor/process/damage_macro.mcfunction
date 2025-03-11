data modify entity @s Health set value 1024f


#type 1 is lava
$execute if score $type ca.resistor_var matches 1 run damage @s $(damage) cartographer_core:resistor/fire

#type 2 is sweet berry bush
$execute if score $type ca.resistor_var matches 2 run damage @s $(damage) cartographer_core:resistor/block

#type 3 is poison
$execute if score $type ca.resistor_var matches 3 run damage @s $(damage) cartographer_core:resistor/magic

#type 4 is wither
$execute if score $type ca.resistor_var matches 4 run damage @s $(damage) cartographer_core:resistor/magic

#type 5 is fall damage
$execute if score $type ca.resistor_var matches 5 run damage @s $(damage) cartographer_core:resistor/fall

#type 6 is cactus
$execute if score $type ca.resistor_var matches 6 run damage @s $(damage) cartographer_core:resistor/block

#type 7 is drowning
$execute if score $type ca.resistor_var matches 7 run damage @s $(damage) cartographer_core:resistor/drown

#type 9 is magma
$execute if score $type ca.resistor_var matches 9 run damage @s $(damage) cartographer_core:resistor/fire

#type 10 is falling block
$execute if score $type ca.resistor_var matches 10 run damage @s $(damage) cartographer_core:resistor/block

#type 11 is powder snow
$execute if score $type ca.resistor_var matches 11 run damage @s $(damage) cartographer_core:resistor/freeze

#type 12 is being on fire
$execute if score $type ca.resistor_var matches 12 run damage @s $(damage) cartographer_core:resistor/fire

#type 13 is explosion
$execute if score $type ca.resistor_var matches 13 run damage @s $(damage) cartographer_core:resistor/explosion


#Enemy afflicted damage types
$execute if score $type ca.resistor_var matches 101 run damage @s $(damage) cartographer_core:resistor/projectile

$execute if score $type ca.resistor_var matches 102 run damage @s $(damage) cartographer_core:resistor/explosion

$execute if score $type ca.resistor_var matches 103 run damage @s $(damage) cartographer_core:resistor/magic

$execute if score $type ca.resistor_var matches 104 run damage @s $(damage) cartographer_core:resistor/fire

$execute if score $type ca.resistor_var matches 105 run damage @s $(damage) cartographer_core:resistor/freeze

$execute if score $type ca.resistor_var matches 106 run damage @s $(damage) cartographer_core:resistor/fall

$execute if score $type ca.resistor_var matches 107 run damage @s $(damage) cartographer_core:resistor/drown

$execute if score $type ca.resistor_var matches 110 run damage @s $(damage) cartographer_core:resistor/melee

#$say $(damage)

execute store result score $damage_subtract ca.resistor_var run data get entity @s Health 100

scoreboard players set $damage_remaining ca.resistor_var 102400
scoreboard players operation $damage_remaining ca.resistor_var -= $damage_subtract ca.resistor_var