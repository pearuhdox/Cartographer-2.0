execute on origin run scoreboard players operation $trident_val ca.attr_ranged_damage_value = @s ca.attr_ranged_damage_value

#execute on origin if entity @s[type=#minecraft:skeletons] run scoreboard players add $trident_val ca.attr_ranged_damage_value 400

execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $trident_val ca.attr_ranged_damage_value *= @s ca.attr_ranged_damage_percent
execute on origin if score @s ca.attr_ranged_damage_percent matches 1.. run scoreboard players operation $trident_val ca.attr_ranged_damage_value /= $100 ca.CONSTANT

scoreboard players operation @s ca.attr_ranged_damage_total = $trident_val ca.attr_ranged_damage_value
execute on passengers if entity @s[type=item_display] run scoreboard players operation @s ca.attr_ranged_damage_total = $trident_val ca.attr_ranged_damage_value

data modify entity @s damage set value 0.01d