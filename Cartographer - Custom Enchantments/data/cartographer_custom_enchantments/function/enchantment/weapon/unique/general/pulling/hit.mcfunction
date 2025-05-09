scoreboard players operation $force ca.ench_var = $pulling ca.ench_value
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players add $force ca.ench_var 2500
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $4 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players add $force ca.ench_var 2


execute if entity @s[type=player] run data modify storage gu:main out set value "-"
execute if entity @s[type=player] on attacker run function gu:generate
execute if entity @s[type=player] run data modify storage cartographer:custom_enchantments entity set from storage gu:main out
execute if entity @s[type=player] store result storage cartographer:custom_enchantments strength int 1 run scoreboard players get $force ca.ench_var
execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/do_push_player with storage cartographer:custom_enchantments

execute unless entity @s[type=player] at @s run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/do_push_mob

execute on attacker run tag @s remove ca.pulling_owner