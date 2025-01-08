execute store result score $ranged_damage ca.attr_apply_var run data get storage cartographer:custom_attributes active_projectile.damage 100
scoreboard players operation $damage ca.lucky_hit_var = $ranged_damage ca.attr_apply_var
