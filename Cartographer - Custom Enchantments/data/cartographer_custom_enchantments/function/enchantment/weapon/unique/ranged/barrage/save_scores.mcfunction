data modify storage cartographer_custom_enchantments:barrage data set value {}

execute store result storage cartographer_custom_enchantments:barrage data.attributes.ranged_damage int 1 on origin run scoreboard players get @s ca.attr_ranged_damage_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.ranged_velocity int 1 on origin run scoreboard players get @s ca.attr_ranged_velocity_total

execute store result storage cartographer_custom_enchantments:barrage data.attributes.lucky_hit_chance int 1 on origin run scoreboard players get @s ca.attr_lucky_hit_chance_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.lucky_hit_damage int 1 on origin run scoreboard players get @s ca.attr_lucky_hit_damage_total

execute store result storage cartographer_custom_enchantments:barrage data.attributes.chaining_hit_chance int 1 on origin run scoreboard players get @s ca.attr_chaining_hit_chance_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.chaining_hit_damage int 1 on origin run scoreboard players get @s ca.attr_chaining_hit_damage_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.chaining_hit_amount int 1 on origin run scoreboard players get @s ca.attr_chaining_hit_amount_total

execute store result storage cartographer_custom_enchantments:barrage data.attributes.restrike_hit_chance int 1 on origin run scoreboard players get @s ca.attr_restrike_hit_chance_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.restrike_hit_damage int 1 on origin run scoreboard players get @s ca.attr_restrike_hit_damage_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.restrike_hit_amount int 1 on origin run scoreboard players get @s ca.attr_restrike_hit_amount_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.restrike_hit_rate int 1 on origin run scoreboard players get @s ca.attr_restrike_hit_rate_total

execute store result storage cartographer_custom_enchantments:barrage data.attributes.life_drain_chance int 1 on origin run scoreboard players get @s ca.attr_life_drain_chance_total
execute store result storage cartographer_custom_enchantments:barrage data.attributes.life_drain_amount int 1 on origin run scoreboard players get @s ca.attr_life_drain_amount_total

data modify storage cartographer:custom_enchantments x_motion set from entity @s Motion[0]
data modify storage cartographer:custom_enchantments y_motion set from entity @s Motion[1]
data modify storage cartographer:custom_enchantments z_motion set from entity @s Motion[2]


execute store result score $yaw ca.ench_barrage_lvl run data get entity @s Rotation[0]
execute store result score $pitch ca.ench_barrage_lvl run data get entity @s Rotation[1]

#scoreboard players operation $yaw ca.ench_barrage_lvl *= $-1 ca.CONSTANT
#scoreboard players operation $pitch ca.ench_barrage_lvl *= $-1 ca.CONSTANT

execute store result storage cartographer:custom_enchantments yaw float 1 run scoreboard players get $yaw ca.ench_barrage_lvl
execute store result storage cartographer:custom_enchantments pitch float 1 run scoreboard players get $pitch ca.ench_barrage_lvl


data modify storage cartographer_custom_enchantments:barrage data.item set from entity @s item
data modify storage cartographer_custom_enchantments:barrage data.Item set from entity @s Item
data modify storage cartographer_custom_enchantments:barrage data.weapon set from entity @s weapon

data modify storage cartographer_custom_enchantments:barrage data.acceleration_power set from entity @s acceleration_power
