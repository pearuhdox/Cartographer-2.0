scoreboard players set $size ca.ench_trailblazer_lvl 250

execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_trailblazer_lvl += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_trailblazer_lvl *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_trailblazer_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_trailblazer_lvl
scoreboard players operation $size_neg_1 ca.ench_trailblazer_lvl = $size ca.ench_trailblazer_lvl
scoreboard players operation $size ca.ench_trailblazer_lvl /= $2 ca.CONSTANT
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $size ca.ench_trailblazer_lvl
scoreboard players operation $size ca.ench_trailblazer_lvl /= $4 ca.CONSTANT
execute store result storage cartographer:custom_enchantments quarter_size double 0.01 run scoreboard players get $size ca.ench_trailblazer_lvl

scoreboard players remove $size_neg_1 ca.ench_trailblazer_lvl 100
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_trailblazer_lvl

scoreboard players operation $damage ca.ench_trailblazer_lvl = @s ca.ench_trailblazer_lvl
#scoreboard players operation $damage ca.ench_trailblazer_lvl *= $2 ca.CONSTANT
scoreboard players operation $damage ca.ench_trailblazer_lvl *= $100 ca.CONSTANT

execute if score @s ca.attr_aoe_damage_value matches -1999999.. run scoreboard players operation $damage ca.ench_trailblazer_lvl += @s ca.attr_aoe_damage_value
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_trailblazer_lvl *= @s ca.attr_aoe_damage_percent
execute if score @s ca.attr_aoe_damage_percent matches -1999999.. run scoreboard players operation $damage ca.ench_trailblazer_lvl /= $100 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_trailblazer_lvl

execute store result score $x ca.ench_trailblazer_lvl run data get entity @s Pos[0] 100
execute store result score $y ca.ench_trailblazer_lvl run data get entity @s Pos[1] 100
execute store result score $z ca.ench_trailblazer_lvl run data get entity @s Pos[2] 100

execute store result storage cartographer:custom_enchantments x double 0.01 run scoreboard players get $x ca.ench_trailblazer_lvl
#execute store result storage cartographer:custom_enchantments y double 0.01 run scoreboard players get $y ca.ench_trailblazer_lvl
execute store result storage cartographer:custom_enchantments z double 0.01 run scoreboard players get $z ca.ench_trailblazer_lvl

function cartographer_custom_enchantments:enchantment/passive/trailblazer/custom_statuses/check_allow_status
execute if score $allow_statuses ca.ench_trailblazer_lvl matches 1.. if entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/trailblazer/custom_statuses/status_player
execute if score $allow_statuses ca.ench_trailblazer_lvl matches 1.. unless entity @s[type=player] run function cartographer_custom_enchantments:enchantment/passive/trailblazer/custom_statuses/status_mob


function cartographer_custom_enchantments:enchantment/passive/trailblazer/place

scoreboard players remove @s ca.sprint_dist_trailblazer 150