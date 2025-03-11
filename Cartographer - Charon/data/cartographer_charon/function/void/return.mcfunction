execute store result score $lift void_home.y run data get entity @s Pos[1]

data modify storage cartographer_charon:home Pos set value [0d,0d,0d]

execute store result storage cartographer_charon:home Pos[0] double 1 run scoreboard players add @s void_home.x 0
execute store result storage cartographer_charon:home Pos[1] double 1 run scoreboard players add @s void_home.y 0
execute store result storage cartographer_charon:home Pos[2] double 1 run scoreboard players add @s void_home.z 0

data modify entity 38118151-4815-1351-3118-11518 Pos set from storage cartographer_charon:home Pos

tp @s 38118151-4815-1351-3118-11518
execute at @s run tp @s ~0.5 ~0.1 ~0.5

execute positioned as 38118151-4815-1351-3118-11518 run particle minecraft:portal ~ ~1 ~ 0 0 0 3 300 normal

execute positioned as 38118151-4815-1351-3118-11518 run playsound minecraft:entity.evoker.prepare_summon player @a[distance=..16] ~ ~ ~ 1 1.65
execute positioned as 38118151-4815-1351-3118-11518 run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 1 0.75
execute positioned as 38118151-4815-1351-3118-11518 run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 2 1

execute positioned as 38118151-4815-1351-3118-11518 run setblock ~ ~-1 ~ black_stained_glass keep

tp 38118151-4815-1351-3118-11518 4206900 60 4206900


scoreboard players operation $diff void_home.y = @s void_home.y
scoreboard players operation $diff void_home.y -= $lift void_home.y


effect give @s darkness 3 0 true
effect give @s slow_falling 3 0 true

scoreboard players operation @s ca.damage = $diff void_home.y
scoreboard players operation @s ca.damage *= $10 ca.CONSTANT
scoreboard players operation @s ca.damage /= $7 ca.CONSTANT

execute if score @s ca.damage matches ..39 run scoreboard players set @s ca.damage 40
execute if score @s ca.damage_queue matches 101.. run scoreboard players set @s ca.damage 100

function cartographer_core:helper/damage_player/apply_damage