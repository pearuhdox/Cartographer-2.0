tag @s add ca.drilling_proc

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air replace

playsound minecraft:entity.zombie.attack_wooden_door player @a[distance=..12] ~ ~ ~ 0.25 1.6
particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 3 8 normal
particle minecraft:dust{color:[0.8,0.8,0.8],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0 15 normal

tag @s remove ca.drilling_used