execute if score @s ca.attr_airdash_count_total matches 1.. if score @s ca.airdash_count matches 1.. run scoreboard players add @s ca.airdash_time 1
execute if score @s ca.attr_airdash_count_total matches 1.. if score @s ca.airdash_count matches 1.. if score @s ca.airdash_time matches 80.. run playsound minecraft:entity.breeze.slide player @s ~ ~ ~ 1 2
execute if score @s ca.attr_airdash_count_total matches 1.. if score @s ca.airdash_count matches 1.. if score @s ca.airdash_time matches 80.. run scoreboard players remove @s ca.airdash_count 100
execute if score @s ca.attr_airdash_count_total matches 1.. if score @s ca.airdash_time matches 80.. run scoreboard players remove @s ca.airdash_time 80

execute if score @s ca.attr_airdash_count_total matches 1.. unless block ~ ~ ~ #minecraft:climbable if entity @s[tag=ca.released_sprint_key] if entity @s[nbt={OnGround:1b}] run tag @s remove ca.released_sprint_key
execute if score @s ca.attr_airdash_count_total matches 1.. unless predicate cartographer_core:world/in_water unless score @s ca.extra_jump_count < @s ca.attr_extra_jump_count_total if score @s ca.airdash_count < @s ca.attr_airdash_count_total unless score @s ca.movement_tech_cdl matches 1.. if block ~ ~-0.2 ~ #cartographer_core:can_raycast unless block ~ ~ ~ #minecraft:climbable unless entity @s[nbt={OnGround:1b}] run function cartographer_custom_attributes:custom_attributes/effects/airdash/tick

execute if score @s ca.attr_extra_jump_count_total matches 1.. unless block ~ ~ ~ #minecraft:climbable if score @s ca.extra_jump_count matches 1.. if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ca.extra_jump_count 0
execute if score @s ca.attr_extra_jump_count_total matches 1.. unless block ~ ~ ~ #minecraft:climbable if entity @s[tag=ca.released_jump_key] if entity @s[nbt={OnGround:1b}] run tag @s remove ca.released_jump_key
execute if score @s ca.attr_extra_jump_count_total matches 1.. unless predicate cartographer_core:world/in_water if score @s ca.extra_jump_count < @s ca.attr_extra_jump_count_total unless score @s ca.movement_tech_cdl matches 1.. if block ~ ~-0.2 ~ #cartographer_core:can_raycast unless block ~ ~ ~ #minecraft:climbable unless entity @s[nbt={OnGround:1b}] run function cartographer_custom_attributes:custom_attributes/effects/extra_jump/tick

execute if score @s ca.movement_tech_cdl matches 1.. run scoreboard players remove @s ca.movement_tech_cdl 1


#Save X and Z from last tick
execute if score @s ca.attr_airdash_count_total matches 1.. unless score @s ca.attr_extra_jump_count_total matches 1.. run execute store result score @s ca.move_x run data get entity @s Pos[0] 1000
execute if score @s ca.attr_airdash_count_total matches 1.. unless score @s ca.attr_extra_jump_count_total matches 1.. run execute store result score @s ca.move_z run data get entity @s Pos[2] 1000

execute if score @s ca.attr_extra_jump_count_total matches 1.. unless score @s ca.attr_airdash_count_total matches 1.. run execute store result score @s ca.move_x run data get entity @s Pos[0] 1000
execute if score @s ca.attr_extra_jump_count_total matches 1.. unless score @s ca.attr_airdash_count_total matches 1.. run execute store result score @s ca.move_z run data get entity @s Pos[2] 1000

execute if score @s ca.attr_extra_jump_count_total matches 1.. if score @s ca.attr_airdash_count_total matches 1.. run execute store result score @s ca.move_x run data get entity @s Pos[0] 1000
execute if score @s ca.attr_extra_jump_count_total matches 1.. if score @s ca.attr_airdash_count_total matches 1.. run execute store result score @s ca.move_z run data get entity @s Pos[2] 1000


#Initialize Scores Properly
execute unless score @s ca.extra_jump_count matches 0.. run scoreboard players set @s ca.extra_jump_count 0
execute unless score @s ca.airdash_count matches 0.. run scoreboard players set @s ca.airdash_count 0