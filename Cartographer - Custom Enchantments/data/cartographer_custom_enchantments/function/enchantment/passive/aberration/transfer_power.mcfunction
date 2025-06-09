#execute if score @s ca.quake_time matches 2.. run scoreboard players remove @s ca.quake_time 2


scoreboard players operation @s ca.aberration_dmg += $result_damage ca.ench_var

data modify storage cartographer:custom_enchantments x set from entity @s Pos[0]
data modify storage cartographer:custom_enchantments y set from entity @s Pos[1]
data modify storage cartographer:custom_enchantments z set from entity @s Pos[2]

execute positioned ~ ~1 ~ run function cartographer_custom_enchantments:enchantment/passive/aberration/transfer_power_vfx with storage cartographer:custom_enchantments