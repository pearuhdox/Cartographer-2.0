execute if score @s ca.lifetime matches 1 as @s at @s run playsound minecraft:entity.wither.ambient player @a[distance=..16] ~ ~ ~ 0.3 2
execute if score @s ca.lifetime matches 1 as @s at @s run playsound minecraft:entity.bogged.ambient player @a ~ ~ ~ 1 0.5

execute if score @s ca.lifetime matches 20 as @s at @s run playsound minecraft:entity.bogged.ambient player @a ~ ~ ~ 1 0.5
execute if score @s ca.lifetime matches 40 as @s at @s run playsound minecraft:entity.bogged.ambient player @a ~ ~ ~ 1 0.5

execute if score @s ca.lifetime matches 60 as @s at @s run playsound minecraft:entity.wither.ambient player @a[distance=..16] ~ ~ ~ 0.3 2
execute if score @s ca.lifetime matches 60 as @s at @s run playsound minecraft:entity.bogged.ambient player @a ~ ~ ~ 1 0.5

execute if score @s ca.lifetime matches 80 as @s at @s run playsound minecraft:entity.bogged.ambient player @a ~ ~ ~ 1 0.5

scoreboard players operation $mod_2 ca.ench_haunting_lvl = @s ca.lifetime
scoreboard players operation $mod_2 ca.ench_haunting_lvl %= $2 ca.CONSTANT

scoreboard players operation $mod_4 ca.ench_haunting_lvl = @s ca.lifetime
scoreboard players operation $mod_4 ca.ench_haunting_lvl %= $4 ca.CONSTANT

execute if score $mod_4 ca.ench_haunting_lvl matches 1 as @s at @s run particle minecraft:instant_effect ~ ~0.2 ~ 0.1 0.1 0.1 0.1 1 normal
execute if score $mod_4 ca.ench_haunting_lvl matches 1 as @s at @s run particle minecraft:soul ~ ~0.5 ~ 0.2 0.3 0.2 0.001 1 normal


execute as @s at @s run tp @s ~ ~0.005 ~

execute as @s at @s run rotate @s ~3 ~
execute as @s at @s on passengers at @s run rotate @s ~3 ~

execute if score @s ca.lifetime matches 100 as @s at @s run function cartographer_custom_enchantments:enchantment/curse/haunting/animation/setup_items
execute if score @s ca.lifetime matches 100 as @s at @s positioned ~ ~-0.25 ~ run summon skeleton ~ ~ ~ {Tags:["ca.haunting_shade","ca.new_haunting_shade","ca.no_death_items"],DeathLootTable:"",PersistenceRequired:1b,Silent:1b,CanPickUpLoot:0b}
execute if score @s ca.lifetime matches 100 as @s at @s as @e[type=skeleton,limit=1,sort=nearest,distance=..2,tag=ca.new_haunting_shade] at @s run function cartographer_custom_enchantments:enchantment/curse/haunting/animation/create_shade

execute if score @s ca.lifetime matches 100 as @s at @s on passengers at @s run kill @s
execute if score @s ca.lifetime matches 100 as @s at @s run scoreboard players remove $haunting_ct ca.ench_haunting_lvl 1
execute if score @s ca.lifetime matches 100 as @s at @s run kill @s

scoreboard players add @s ca.lifetime 1