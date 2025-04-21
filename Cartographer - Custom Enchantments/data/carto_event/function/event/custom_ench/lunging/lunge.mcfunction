particle minecraft:item_slime ~ ~0.1 ~ 0.5 0 0.5 0.2 30 normal
particle minecraft:gust ~ ~0.3 ~ 0 0 0 0.2 1 force

execute if entity @s[type=player] run playsound minecraft:entity.slime.squish_small player @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[type=player] run playsound minecraft:block.slime_block.break player @a[distance=..16] ~ ~ ~ 1 0.5

execute unless entity @s[type=player] run playsound minecraft:entity.slime.squish_small hostile @a[distance=..16] ~ ~ ~ 1.5 0.5
execute unless entity @s[type=player] run playsound minecraft:block.slime_block.break hostile @a[distance=..16] ~ ~ ~ 1.5 0.5


scoreboard players operation $force ca.ench_var = @s ca.ench_lunging_lvl
execute if entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $1000 ca.CONSTANT
execute if entity @s[type=player] run scoreboard players add $force ca.ench_var 5000
execute unless entity @s[type=player] run scoreboard players operation $force ca.ench_var *= $3 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players add $force ca.ench_var 3

execute store result score $rotation ca.ench_var run data get entity @s Rotation[1]

execute if score $rotation ca.ench_var matches 41.. run scoreboard players set $rotation ca.ench_var 40
execute if score $rotation ca.ench_var matches ..-41 run scoreboard players set $rotation ca.ench_var -40

execute if score $rotation ca.ench_var matches 20.. if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500
execute if score $rotation ca.ench_var matches ..-20 if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500
execute if score $rotation ca.ench_var matches 30.. if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500
execute if score $rotation ca.ench_var matches ..-30 if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500
execute if score $rotation ca.ench_var matches 40.. if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500
execute if score $rotation ca.ench_var matches ..-40 if entity @s[type=player] run scoreboard players remove $force ca.ench_var 500

execute store result storage cartographer:custom_enchantments rotation float 1 run scoreboard players get $rotation ca.ench_var

execute if entity @s[type=!player] run function carto_event:event/custom_ench/lunging/do_push_mob with storage cartographer:custom_enchantments
execute if entity @s[type=player] run function carto_event:event/custom_ench/lunging/lunge_macro with storage cartographer:custom_enchantments

function carto_event:api/create_single_entity_event {event:"custom_ench/lunging/moving",duration:100,delay:0,parameters:{},merge_behavior:"merge"}
tag @s add ca.is_lunging

execute if entity @s[type=player] if score @s ca.ench_lunging_lvl matches 1.. if predicate cartographer_custom_enchantments:has/lunging/offhand_ready unless predicate cartographer_custom_enchantments:has/lunging/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/unapply_offhand
execute if entity @s[type=player] if score @s ca.ench_lunging_lvl matches 1.. if predicate cartographer_custom_enchantments:has/lunging/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/lunging/unapply
