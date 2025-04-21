execute unless score @s ca.energized_x matches -2000000.. store result score @s ca.energized_x run data get entity @s Pos[0] 10
execute unless score @s ca.energized_y matches -2000000.. store result score @s ca.energized_y run data get entity @s Pos[1] 10
execute unless score @s ca.energized_z matches -2000000.. store result score @s ca.energized_z run data get entity @s Pos[2] 10

scoreboard players operation $past_x ca.energized_x = @s ca.energized_x
scoreboard players operation $past_y ca.energized_y = @s ca.energized_y
scoreboard players operation $past_z ca.energized_z = @s ca.energized_z

execute store result score @s ca.energized_x run data get entity @s Pos[0] 10
execute store result score @s ca.energized_y run data get entity @s Pos[1] 10
execute store result score @s ca.energized_z run data get entity @s Pos[2] 10

scoreboard players operation $diff_x ca.energized_x = @s ca.energized_x
scoreboard players operation $diff_y ca.energized_y = @s ca.energized_y
scoreboard players operation $diff_z ca.energized_z = @s ca.energized_z

scoreboard players operation $diff_x ca.energized_x -= $past_x ca.energized_x
scoreboard players operation $diff_y ca.energized_y -= $past_y ca.energized_y
scoreboard players operation $diff_z ca.energized_z -= $past_z ca.energized_z

scoreboard players operation $diff_x ca.energized_x *= $diff_x ca.energized_x
scoreboard players operation $diff_y ca.energized_y *= $diff_y ca.energized_y
scoreboard players operation $diff_z ca.energized_z *= $diff_z ca.energized_z

scoreboard players set @s ca.energized_stack 0
scoreboard players operation @s ca.energized_stack += $diff_x ca.energized_x
scoreboard players operation @s ca.energized_stack += $diff_y ca.energized_y
scoreboard players operation @s ca.energized_stack += $diff_z ca.energized_z

scoreboard players operation $math.isqrt.x bs.in = @s ca.energized_stack
function #bs.math:isqrt
scoreboard players operation @s ca.energized_stack = $math.isqrt bs.out

execute unless entity @s[type=player] run scoreboard players operation @s ca.energized_stack *= $2 ca.CONSTANT

execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"energized/calculate",duration:6,delay:0,parameters:{},merge_behavior:"merge"}
execute unless entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"energized/calculate",duration:21,delay:0,parameters:{},merge_behavior:"merge"}

tag @s add ca.energized_calculated