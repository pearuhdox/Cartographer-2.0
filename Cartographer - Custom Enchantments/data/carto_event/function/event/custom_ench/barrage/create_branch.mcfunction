
tag @s add ca.allow_damage_bypass
tag @s add ca.needs_checker
tag @s add ca.no_ench_calc
tag @s add ca.no_attr_calc
tag @s add ac.has_attributes_data
tag @s add ca.no_pickup

data modify entity @s pickup set value 0b

execute if entity @s[tag=ca.potion_owner_req]

#$execute at @s positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) run particle minecraft:block_marker{block_state:"barrier"} ~ ~ ~ 0 0 0 1 1 force

#$execute at @s positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) positioned ~$(x) ~$(y) ~$(z) run rotate @s facing ~$(x) ~$(y) ~$(z)

#$data modify entity @s Motion[0] set value $(x)
#$data modify entity @s Motion[1] set value $(y)
#$data modify entity @s Motion[2] set value $(z)

data modify entity @s Air set value 1b
data modify entity @s HasBeenShot set value 0b
data remove entity @s LeftOwner

data modify entity @s item set from storage carto_event current[-1].parameters.item
data modify entity @s Item set from storage carto_event current[-1].parameters.Item
data modify entity @s weapon set from storage carto_event current[-1].parameters.weapon

data modify entity @s acceleration_power set from storage carto_event current[-1].parameters.acceleration_power

execute if entity @s[type=trident] run data remove entity @s item.components.minecraft:enchantments.minecraft:loyalty

data modify storage cartographer:custom_enchantments UUID set value []
$execute as $(owner) at @s run data modify storage cartographer:custom_enchantments UUID set from entity @s UUID
data modify entity @s Owner set from storage cartographer:custom_enchantments UUID


data modify storage cartographer:custom_enchantments active_projectile.enchants set value {}
data modify storage cartographer:custom_enchantments active_projectile.enchants set from storage carto_event current[-1].parameters.enchants
function cartographer_custom_enchantments:register/data_to_enchants

scoreboard players operation @s ca.ench_hex_eater_lvl = $hex_eater ca.ench_value
scoreboard players operation @s ca.ench_chaotic_lvl = $chaotic ca.ench_value
scoreboard players operation @s ca.ench_hunter_lvl = $hunter ca.ench_value
scoreboard players operation @s ca.ench_duelist_lvl = $duelist ca.ench_value
scoreboard players operation @s ca.ench_first_strike_lvl = $first_strike ca.ench_value
scoreboard players operation @s ca.ench_follow_up_lvl = $follow_up ca.ench_value
scoreboard players operation @s ca.ench_focus_lvl = $focus ca.ench_value
scoreboard players operation @s ca.ench_concentration_lvl = $concentration ca.ench_value
scoreboard players operation @s ca.ench_rushdown_lvl = $rushdown ca.ench_value
scoreboard players operation @s ca.ench_leverage_lvl = $leverage ca.ench_value
scoreboard players operation @s ca.ench_overcharge_lvl = $overcharge ca.ench_value
scoreboard players operation @s ca.ench_point_blank_lvl = $point_blank ca.ench_value
scoreboard players operation @s ca.ench_sharpshot_lvl = $sharpshot ca.ench_value
scoreboard players operation @s ca.ench_explosive_lvl = $explosive ca.ench_value
scoreboard players operation @s ca.ench_pulling_lvl = $pulling ca.ench_value
scoreboard players operation @s ca.ench_grappling_lvl = $grappling ca.ench_value
scoreboard players operation @s ca.ench_correction_lvl = $correction ca.ench_value
scoreboard players operation @s ca.ench_ricochet_lvl = $ricochet ca.ench_value
scoreboard players operation @s ca.ench_barrage_lvl = $barrage ca.ench_value
scoreboard players operation @s ca.ench_shrapnel_lvl = $shrapnel ca.ench_value
scoreboard players operation @s ca.ench_ripper_lvl = $ripper ca.ench_value
scoreboard players operation @s ca.ench_barbed_lvl = $barbed ca.ench_value
scoreboard players operation @s ca.ench_collapse_lvl = $collapse ca.ench_value


scoreboard players operation @s ca.ench_drilling_lvl = $drilling ca.ench_value
scoreboard players operation @s ca.ench_excavator_lvl = $excavator ca.ench_value

scoreboard players operation @s ca.ench_starfall_lvl = $starfall ca.ench_value
scoreboard players operation @s ca.ench_orbit_lvl = $orbit ca.ench_value
scoreboard players operation @s ca.ench_storm_lvl = $storm ca.ench_value
scoreboard players operation @s ca.ench_induction_lvl = $induction ca.ench_value
scoreboard players operation @s ca.ench_eruption_lvl = $eruption ca.ench_value
scoreboard players operation @s ca.ench_soulfire_lvl = $soulfire ca.ench_value
scoreboard players operation @s ca.ench_aberration_lvl = $aberration ca.ench_value
scoreboard players operation @s ca.ench_quake_lvl = $quake ca.ench_value

scoreboard players operation @s ca.ench_starfall_main_lvl = $starfall_hand ca.ench_value
scoreboard players operation @s ca.ench_orbit_main_lvl = $orbit_hand ca.ench_value
scoreboard players operation @s ca.ench_storm_main_lvl = $storm_hand ca.ench_value
scoreboard players operation @s ca.ench_induction_main_lvl = $induction_hand ca.ench_value
scoreboard players operation @s ca.ench_eruption_main_lvl = $eruption_hand ca.ench_value
scoreboard players operation @s ca.ench_soulfire_main_lvl = $soulfire_hand ca.ench_value
scoreboard players operation @s ca.ench_aberration_main_lvl = $aberration_hand ca.ench_value
scoreboard players operation @s ca.ench_quake_main_lvl = $quake_hand ca.ench_value

scoreboard players operation @s ca.ench_flame_lvl = $flame ca.ench_value
scoreboard players operation @s ca.ench_power_lvl = $power ca.ench_value
scoreboard players operation @s ca.ench_punch_lvl = $punch ca.ench_value

execute if score @s ca.ench_flame_lvl matches 1.. run data modify entity @s Fire set value 100s

execute store result score @s ca.attr_ranged_damage_total run data get storage carto_event current[-1].parameters.attributes.ranged_damage 1
execute store result score @s ca.attr_ranged_damage_value run data get storage carto_event current[-1].parameters.attributes.ranged_damage 1
execute store result score @s ca.attr_ranged_velocity_total run data get storage carto_event current[-1].parameters.attributes.ranged_velocity 1

execute store result score @s ca.attr_lucky_hit_chance_total run data get storage carto_event current[-1].parameters.attributes.lucky_hit_chance 1
execute store result score @s ca.attr_lucky_hit_damage_total run data get storage carto_event current[-1].parameters.attributes.lucky_hit_damage 1


execute store result score @s ca.attr_chaining_hit_chance_total run data get storage carto_event current[-1].parameters.attributes.chaining_hit_chance 1
execute store result score @s ca.attr_chaining_hit_damage_total run data get storage carto_event current[-1].parameters.attributes.chaining_hit_damage 1
execute store result score @s ca.attr_chaining_hit_amount_total run data get storage carto_event current[-1].parameters.attributes.chaining_hit_amount 1

execute store result score @s ca.attr_chaining_hit_damage_value run data get storage carto_event current[-1].parameters.attributes.chaining_hit_damage 1
execute store result score @s ca.attr_chaining_hit_amount_value run data get storage carto_event current[-1].parameters.attributes.chaining_hit_amount 1


execute store result score @s ca.attr_restrike_hit_chance_total run data get storage carto_event current[-1].parameters.attributes.restrike_hit_chance 1
execute store result score @s ca.attr_restrike_hit_damage_total run data get storage carto_event current[-1].parameters.attributes.restrike_hit_damage 1
execute store result score @s ca.attr_restrike_hit_amount_total run data get storage carto_event current[-1].parameters.attributes.restrike_hit_amount 1
execute store result score @s ca.attr_restrike_hit_rate_total run data get storage carto_event current[-1].parameters.attributes.restrike_hit_rate 1

execute store result score @s ca.attr_restrike_hit_damage_value run data get storage carto_event current[-1].parameters.attributes.restrike_hit_damage 1
execute store result score @s ca.attr_restrike_hit_amount_value run data get storage carto_event current[-1].parameters.attributes.restrike_hit_amount 1
execute store result score @s ca.attr_restrike_hit_rate_value run data get storage carto_event current[-1].parameters.attributes.restrike_hit_rate 1


execute store result score @s ca.attr_life_drain_chance_total run data get storage carto_event current[-1].parameters.attributes.life_drain_chance 1
execute store result score @s ca.attr_life_drain_amount_total run data get storage carto_event current[-1].parameters.attributes.life_drain_amount 1

execute if score @s ca.attr_ranged_damage_total matches 1.. run data modify entity @s damage set value 0.0d

execute if entity @s[type=#bb:arrow] on origin if entity @s[type=#minecraft:skeletons] run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[type=#bb:arrow] on origin if entity @s[type=minecraft:pillager] run playsound minecraft:item.crossbow.shoot hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[type=#bb:arrow] on origin if entity @s[type=minecraft:piglin] run playsound minecraft:item.crossbow.shoot hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if entity @s[type=#bb:arrow] on origin if entity @s[type=!minecraft:piglin,type=!minecraft:pillager,type=!#minecraft:skeletons] run playsound minecraft:entity.skeleton.shoot hostile @a[distance=..16] ~ ~ ~ 1 1.5

execute if entity @s[type=trident] run playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 1 1.5


execute if score @s ca.ench_grappling_lvl matches 1.. run tag @s add ca.check_land
execute if score @s ca.ench_collapse_lvl matches 1.. run tag @s add ca.check_land


tag @s remove ca.barrage_created