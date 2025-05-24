playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 1 1

execute anchored eyes positioned ^ ^ ^0.25 run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#D87EE4\",\"italic\":false,\"text\":\"Enchant Effect\"},{\"color\":\"#B47EE4\",\"italic\":false,\"text\":\"\nDiversion\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

execute store result score $positions ca.ench_diversion_lvl run random value 1..6

particle minecraft:large_smoke ~ ~1 ~ 0.2 0.2 0.2 0.05 30 normal
execute rotated ~ 0 positioned ^0.5 ^ ^0.5 run particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force
execute rotated ~ 0 positioned ^-0.5 ^ ^0.5 run particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force
execute rotated ~ 0 positioned ^ ^ ^-0.71 run particle minecraft:gust ~ ~1 ~ 0 0 0 0 1 force

data modify storage cartographer:custom_enchantments entity_id set value ""

execute if entity @s[type=minecraft:zombie] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:zombie"
execute if entity @s[type=minecraft:husk] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:husk"
execute if entity @s[type=minecraft:drowned] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:drowned"
execute if entity @s[type=minecraft:zombified_piglin] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:zombified_piglin"
execute if entity @s[type=minecraft:skeleton] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:skeleton"
execute if entity @s[type=minecraft:stray] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:stray"
execute if entity @s[type=minecraft:wither_skeleton] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:wither_skeleton"
execute if entity @s[type=minecraft:phantom] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:phantom"
execute if entity @s[type=minecraft:wither] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:wither"
execute if entity @s[type=minecraft:spider] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:spider"
execute if entity @s[type=minecraft:cave_spider] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:cave_spider"
execute if entity @s[type=minecraft:silverfish] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:silverfish"
execute if entity @s[type=minecraft:endermite] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:endermite"
execute if entity @s[type=minecraft:creeper] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:creeper"
execute if entity @s[type=minecraft:enderman] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:enderman"
execute if entity @s[type=minecraft:blaze] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:blaze"
execute if entity @s[type=minecraft:slime] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:slime"
execute if entity @s[type=minecraft:magma_cube] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:magma_cube"
execute if entity @s[type=minecraft:ghast] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:ghast"
execute if entity @s[type=minecraft:vindicator] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:vindicator"
execute if entity @s[type=minecraft:evoker] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:evoker"
execute if entity @s[type=minecraft:vex] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:vex"
execute if entity @s[type=minecraft:pillager] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:pillager"
execute if entity @s[type=minecraft:ravager] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:ravager"
execute if entity @s[type=minecraft:guardian] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:guardian"
execute if entity @s[type=minecraft:elder_guardian] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:elder_guardian"
execute if entity @s[type=minecraft:witch] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:witch"
execute if entity @s[type=minecraft:iron_golem] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:iron_golem"
execute if entity @s[type=minecraft:shulker] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:shulker"
execute if entity @s[type=minecraft:zombie_villager] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:zombie_villager"
execute if entity @s[type=minecraft:bee] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:bee"
execute if entity @s[type=minecraft:piglin] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:piglin"
execute if entity @s[type=minecraft:piglin_brute] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:piglin_brute"
execute if entity @s[type=minecraft:hoglin] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:hoglin"
execute if entity @s[type=minecraft:zoglin] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:zoglin"
execute if entity @s[type=minecraft:illusioner] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:illusioner"
execute if entity @s[type=minecraft:wolf] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:wolf"
execute if entity @s[type=minecraft:ender_dragon] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:ender_dragon"
execute if entity @s[type=minecraft:rabbit] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:rabbit"
execute if entity @s[type=minecraft:pufferfish] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:pufferfish"
execute if entity @s[type=minecraft:bogged] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:bogged"
execute if entity @s[type=minecraft:breeze] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:breeze"
execute if entity @s[type=minecraft:warden] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:warden"
execute if entity @s[type=minecraft:creaking] run data modify storage cartographer:custom_enchantments entity_id set value "minecraft:creaking"

data modify storage cartographer_custom_enchantments:diversion data set value {}

data modify entity @s Motion set value [0.0,0.0,0.0]

effect give @s invisibility 1 0

data modify storage cartographer_custom_enchantments:diversion data.equipment set from entity @s equipment
data modify storage cartographer_custom_enchantments:diversion data.Tags set from entity @s Tags
data modify storage cartographer_custom_enchantments:diversion data.attributes set from entity @s attributes
data modify storage cartographer_custom_enchantments:diversion data.active_effects set from entity @s active_effects
data modify storage cartographer_custom_enchantments:diversion data.CustomName set from entity @s CustomName

data modify storage cartographer_custom_enchantments:diversion data.drop_chances set value {head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0,saddle:0.0}

execute store result score $health ca.ench_diversion_lvl run data get entity @s Health
scoreboard players operation $health ca.ench_diversion_lvl /= $2 ca.CONSTANT
execute if score $health ca.ench_diversion_lvl matches ..0 run scoreboard players set $health ca.ench_diversion_lvl 1
execute store result storage cartographer_custom_enchantments:diversion data.Health float 1 run scoreboard players get $health ca.ench_diversion_lvl

effect give @s slowness 1 7 true

execute if score @s ca.ench_diversion_lvl matches 1 if score $positions ca.ench_diversion_lvl matches 1..3 rotated ~ 0 positioned ^0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments
execute if score @s ca.ench_diversion_lvl matches 1 if score $positions ca.ench_diversion_lvl matches 1..3 rotated ~ 0 positioned ^-0.5 ^ ^0.5 run tp @s ~ ~ ~ ~ ~

execute if score @s ca.ench_diversion_lvl matches 1 if score $positions ca.ench_diversion_lvl matches 4..6 rotated ~ 0 positioned ^0.5 ^ ^0.5 run tp @s ~ ~ ~ ~ ~
execute if score @s ca.ench_diversion_lvl matches 1 if score $positions ca.ench_diversion_lvl matches 4..6 rotated ~ 0 positioned ^-0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments


execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 1..2 rotated ~ 0 positioned ^0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 1..2 rotated ~ 0 positioned ^-0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 1..2 positioned ^ ^ ^-0.71 run tp @s ~ ~ ~ ~ ~

execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 3..4 rotated ~ 0 positioned ^0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 3..4 rotated ~ 0 positioned ^-0.5 ^ ^0.5 run tp @s ~ ~ ~ ~ ~
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 3..4 positioned ^ ^ ^-0.71 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments

execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 5..6 rotated ~ 0 positioned ^0.5 ^ ^0.5 run tp @s ~ ~ ~ ~ ~
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 5..6 rotated ~ 0 positioned ^-0.5 ^ ^0.5 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments
execute if score @s ca.ench_diversion_lvl matches 2.. if score $positions ca.ench_diversion_lvl matches 5..6 positioned ^ ^ ^-0.71 run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments

execute if score @s ca.ench_diversion_lvl matches 3.. run scoreboard players operation $extra_clones ca.ench_diversion_lvl = @s ca.ench_diversion_lvl
execute if score @s ca.ench_diversion_lvl matches 3.. run scoreboard players remove $extra_clones ca.ench_diversion_lvl 2
execute if score @s ca.ench_diversion_lvl matches 3.. run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/extra_clones_recurse