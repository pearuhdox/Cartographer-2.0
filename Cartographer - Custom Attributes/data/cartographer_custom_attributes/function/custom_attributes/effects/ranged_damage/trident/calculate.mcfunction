scoreboard players operation @s ca.attr_ranged_damage_total = $trident_val ca.attr_ranged_damage_value
execute on passengers if entity @s[type=item_display] run scoreboard players operation @s ca.attr_ranged_damage_total = $trident_val ca.attr_ranged_damage_value

data modify entity @s damage set value 0.01d