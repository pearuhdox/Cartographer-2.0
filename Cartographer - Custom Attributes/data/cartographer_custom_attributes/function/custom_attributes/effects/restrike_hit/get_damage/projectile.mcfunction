scoreboard players operation $damage ca.restrike_hit_var = $ranged_damage ca.attr_apply_var

execute if score $is_arrow ca.attr_apply_var matches 1.. if score $damage ca.restrike_hit_var matches 0 run scoreboard players set $damage ca.restrike_hit_var 800
execute if score $is_trident ca.attr_apply_var matches 1.. if score $damage ca.restrike_hit_var matches 0 run scoreboard players set $damage ca.restrike_hit_var 800
execute if score $is_fireball ca.attr_apply_var matches 1.. if score $damage ca.restrike_hit_var matches 0 run scoreboard players set $damage ca.restrike_hit_var 1000
execute if score $is_small_fireball ca.attr_apply_var matches 1.. if score $damage ca.restrike_hit_var matches 0 run scoreboard players set $damage ca.restrike_hit_var 500

execute if score $is_arrow ca.attr_apply_var matches 1.. if score $power_level ca.attr_apply_var matches 1.. run scoreboard players operation $power ca.restrike_hit_var = $power_level ca.attr_apply_var
execute if score $is_arrow ca.attr_apply_var matches 1.. if score $power_level ca.attr_apply_var matches 1.. run scoreboard players operation $power ca.restrike_hit_var *= $200 ca.CONSTANT
execute if score $is_arrow ca.attr_apply_var matches 1.. if score $power_level ca.attr_apply_var matches 1.. run scoreboard players operation $damage ca.restrike_hit_var += $power ca.restrike_hit_var

execute if score $damage ca.restrike_hit_var matches 0 run scoreboard players set $damage ca.restrike_hit_var 100
