scoreboard players add @s ca.extra_jump_count 100

scoreboard players add @s ca.movement_tech_cdl 5

scoreboard players set $x_pos ca.attr_var 0
scoreboard players set $y_pos ca.attr_var 0
scoreboard players set $z_force ca.attr_var 0
scoreboard players set $forward ca.attr_var 0
scoreboard players set $rotation ca.attr_var 0
scoreboard players set $x_c ca.attr_var 0
scoreboard players set $z_c ca.attr_var 0

execute store result score $x_pos ca.attr_var run data get entity @s Pos[0] 1000
execute store result score $z_pos ca.attr_var run data get entity @s Pos[2] 1000

scoreboard players operation $x_pos ca.attr_var -= @s ca.move_x
scoreboard players operation $z_pos ca.attr_var -= @s ca.move_z

scoreboard players operation $x_pos ca.attr_var *= $-1 ca.CONSTANT
scoreboard players operation $z_pos ca.attr_var *= $-1 ca.CONSTANT


scoreboard players operation $x_pos ca.attr_var *= $x_pos ca.attr_var
scoreboard players operation $z_pos ca.attr_var *= $z_pos ca.attr_var

scoreboard players operation $forward ca.attr_var += $x_pos ca.attr_var
scoreboard players operation $forward ca.attr_var += $z_pos ca.attr_var

scoreboard players operation $math.isqrt.x bs.in = $forward ca.attr_var
function #bs.math:isqrt
scoreboard players operation $forward ca.attr_var = $math.isqrt bs.out

execute store result score $rotation ca.attr_var run data get entity @s Rotation[0] 1

execute if predicate cartographer_core:player/key_press/left unless predicate cartographer_core:player/key_press/forwards unless predicate cartographer_core:player/key_press/backwards run scoreboard players remove $rotation ca.attr_var 90
execute if predicate cartographer_core:player/key_press/left if predicate cartographer_core:player/key_press/forwards run scoreboard players remove $rotation ca.attr_var 30
execute if predicate cartographer_core:player/key_press/left if predicate cartographer_core:player/key_press/backwards run scoreboard players add $rotation ca.attr_var 30

execute if predicate cartographer_core:player/key_press/right unless predicate cartographer_core:player/key_press/forwards unless predicate cartographer_core:player/key_press/backwards run scoreboard players add $rotation ca.attr_var 90
execute if predicate cartographer_core:player/key_press/right if predicate cartographer_core:player/key_press/forwards run scoreboard players add $rotation ca.attr_var 30
execute if predicate cartographer_core:player/key_press/right if predicate cartographer_core:player/key_press/backwards run scoreboard players remove $rotation ca.attr_var 30

scoreboard players operation $rotation ca.attr_var *= $100 ca.CONSTANT

scoreboard players operation $math.cos.x bs.in = $rotation ca.attr_var
function #bs.math:cos
scoreboard players operation $z_c ca.attr_var = $math.cos bs.out

scoreboard players operation $math.sin.x bs.in = $rotation ca.attr_var
function #bs.math:sin
scoreboard players operation $x_c ca.attr_var = $math.sin bs.out


scoreboard players operation $x_c ca.attr_var *= $forward ca.attr_var
scoreboard players operation $z_c ca.attr_var *= $forward ca.attr_var

scoreboard players operation $x_c ca.attr_var /= $10 ca.CONSTANT
scoreboard players operation $z_c ca.attr_var /= $10 ca.CONSTANT

scoreboard players operation $x_c ca.attr_var /= $10 ca.CONSTANT
scoreboard players operation $z_c ca.attr_var /= $10 ca.CONSTANT


scoreboard players operation $x_c ca.attr_var *= $-1 ca.CONSTANT


execute if predicate cartographer_core:player/key_press/backwards run scoreboard players operation $x_c ca.attr_var *= $-1 ca.CONSTANT
execute if predicate cartographer_core:player/key_press/backwards run scoreboard players operation $z_c ca.attr_var *= $-1 ca.CONSTANT

execute store result score $y_force ca.attr_var run attribute @s minecraft:jump_strength get 10000
scoreboard players add $y_force ca.attr_var 300

tp @s @s

scoreboard players operation $x player_motion.api.launch = $x_c ca.attr_var
scoreboard players operation $y player_motion.api.launch = $y_force ca.attr_var
scoreboard players operation $z player_motion.api.launch = $z_c ca.attr_var
function player_motion:api/launch_xyz


playsound minecraft:entity.shulker_bullet.hurt player @a[distance=..16] ~ ~ ~ 0.75 2
particle minecraft:cloud ~ ~-0.2 ~ 0.2 0 0.2 0.025 10 normal