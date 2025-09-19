
execute if entity @s[tag=ca.has_ender_pouch] run function cartographer_ender_pouch:ender/pocket

#execute if score @s ca.open_ender_chest matches 1.. positioned 906 4 1072 if entity @s[distance=..12] at @s run function cartographer_ender_pouch:ender/check_bag
#execute if score @s ca.open_ender_chest matches 1.. run function cartographer_ender_pouch:ender/release

#scoreboard players set @s pouch.open 0
#scoreboard players set @s pouch.break_barrel 0
scoreboard players set @s ca.open_ender_chest 0