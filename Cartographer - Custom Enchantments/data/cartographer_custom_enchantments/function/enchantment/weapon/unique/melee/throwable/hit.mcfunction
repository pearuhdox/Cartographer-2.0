scoreboard players operation $force ca.ench_var = $pulling ca.ench_value
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players add $force ca.ench_var 2500
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $4 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players add $force ca.ench_var 2

execute at @s run tp @s @s

execute on attacker run tag @s add ca.recoil_owner

execute if entity @s[type=player] at @s anchored feet positioned ^ ^ ^ facing entity @n[tag=ca.recoil_owner] feet facing ^ ^ ^1 rotated ~ -25 run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/do_push_player
execute unless entity @s[type=player] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/recoil/do_push_mob

execute on attacker run tag @s remove ca.recoil_owner
