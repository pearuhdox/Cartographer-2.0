execute if score @s ca.momentum_stack matches 1500.. run scoreboard players set $used_momentum ca.momentum_stack 1

execute if score $used_momentum ca.momentum_stack matches 1.. if entity @s[type=player] run playsound minecraft:item.mace.smash_air player @a[distance=..16] ~ ~ ~ 1 1.3
execute if score $used_momentum ca.momentum_stack matches 1.. unless entity @s[type=player] run playsound minecraft:item.mace.smash_air hostile @a[distance=..16] ~ ~ ~ 1 1.3

execute if score $used_momentum ca.momentum_stack matches 1.. if entity @s[type=player] run playsound minecraft:item.mace.smash_ground_heavy player @a[distance=..16] ~ ~ ~ 0.75 1.3
execute if score $used_momentum ca.momentum_stack matches 1.. unless entity @s[type=player] run playsound minecraft:item.mace.smash_ground_heavy hostile @a[distance=..16] ~ ~ ~ 0.75 1.3

execute if score $used_momentum ca.momentum_stack matches 1.. run scoreboard players remove @s ca.momentum_stack 1500

scoreboard players operation $damage ca.momentum_stack = @s ca.ench_momentum_lvl
scoreboard players operation $damage ca.momentum_stack *= $10 ca.CONSTANT

scoreboard players operation $aoe ca.momentum_stack = $damage ca.momentum_stack

scoreboard players operation $damage ca.momentum_stack *= $2 ca.CONSTANT

function cartographer_custom_enchantments:enchantment/passive/momentum/attack