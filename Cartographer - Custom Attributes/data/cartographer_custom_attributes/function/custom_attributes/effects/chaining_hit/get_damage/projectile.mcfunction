scoreboard players operation $damage ca.chaining_hit_var = $ranged_damage ca.attr_apply_var

execute if score $damage ca.chaining_hit_var matches 0 run scoreboard players set $damage ca.chaining_hit_var 100

data modify storage cartographer:custom_attributes chaining_damage_type set value "minecraft:arrow"