scoreboard players operation $previous ca.inertia_stack = @s ca.inertia_stack

execute unless entity @s[type=player] run scoreboard players add @s ca.inertia_stack 200

execute if entity @s[type=player] if score $attack_type ca.ench_value matches 0 run scoreboard players add @s ca.inertia_stack 50

execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 store result score $dmg ca.inertia_stack run attribute @s attack_damage get 1000
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 unless predicate cartographer_core:player/cant_crit run scoreboard players operation $dmg ca.inertia_stack *= $150 ca.CONSTANT
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 unless predicate cartographer_core:player/cant_crit run scoreboard players operation $dmg ca.inertia_stack /= $100 ca.CONSTANT
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 store result score $spd ca.inertia_stack run attribute @s attack_speed get 100
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 run scoreboard players operation $dmg ca.inertia_stack /= $spd ca.inertia_stack
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 run scoreboard players add $dmg ca.inertia_stack 15
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 run scoreboard players operation @s ca.inertia_stack += $dmg ca.inertia_stack

#execute if entity @s[type=player] if score $attack_type ca.ench_value matches 2 unless score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players add @s ca.inertia_stack 100

execute if entity @s[type=player] if score $attack_type ca.ench_value matches 2 if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players operation $dmg ca.inertia_stack = @s ca.attr_ranged_damage_total
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 2 if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players operation $dmg ca.inertia_stack /= $4 ca.CONSTANT
execute if entity @s[type=player] if score $attack_type ca.ench_value matches 2 if score @s ca.attr_ranged_damage_value matches -1999999.. run scoreboard players operation @s ca.inertia_stack += $dmg ca.inertia_stack


execute if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_player_vfx
execute unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/inertia/tier_up_vfx