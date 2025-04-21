scoreboard players set $amount ca.repair_station_state 0

data remove entity 31192011-4452-2112-0000-000000000000 equipment.mainhand
data modify entity 31192011-4452-2112-0000-000000000000 equipment.mainhand set from entity @s item

data modify storage cartographer_repair_stations:data material set value ""
data modify storage cartographer_repair_stations:data visual set value ""


#Default
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/wooden run data modify storage cartographer_repair_stations:data material set value "#minecraft:planks"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/stone run data modify storage cartographer_repair_stations:data material set value "#minecraft:stone_tool_materials"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/golden run data modify storage cartographer_repair_stations:data material set value "minecraft:gold_ingot"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/iron run data modify storage cartographer_repair_stations:data material set value "minecraft:iron_ingot"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/diamond run data modify storage cartographer_repair_stations:data material set value "minecraft:diamond"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/netherite run data modify storage cartographer_repair_stations:data material set value "minecraft:netherite_ingot"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/leather run data modify storage cartographer_repair_stations:data material set value "minecraft:leather"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/chainmail run data modify storage cartographer_repair_stations:data material set value "minecraft:chain"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand turtle_helmet run data modify storage cartographer_repair_stations:data material set value "minecraft:turtle_scute"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand wolf_armor run data modify storage cartographer_repair_stations:data material set value "minecraft:armadillo_scute"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand elytra run data modify storage cartographer_repair_stations:data material set value "minecraft:phantom_membrane"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand bow run data modify storage cartographer_repair_stations:data material set value "minecraft:string"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand crossbow run data modify storage cartographer_repair_stations:data material set value "minecraft:string"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand brush run data modify storage cartographer_repair_stations:data material set value "minecraft:string"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand trident run data modify storage cartographer_repair_stations:data material set value "minecraft:prismarine_shard"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand carrot_on_a_stick run data modify storage cartographer_repair_stations:data material set value "minecraft:carrot"
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand warped_fungus_on_a_stick run data modify storage cartographer_repair_stations:data material set value "minecraft:warped_fungus"

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand mace run data modify storage cartographer_repair_stations:data material set value "minecraft:breeze_rod"

#Visual for Wood and Stone
execute unless data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/wooden run data modify storage cartographer_repair_stations:data visual set value "minecraft:oak_planks"
execute unless data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #cartographer_repair_stations:materials/stone run data modify storage cartographer_repair_stations:data visual set value "minecraft:cobblestone"

execute unless data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.item unless data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.tag run data modify storage cartographer_repair_stations:data visual set from storage cartographer_repair_stations:data material

#Custom
execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.item run data modify storage cartographer_repair_stations:data material set from entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.item
execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.item run data modify storage cartographer_repair_stations:data visual set from storage cartographer_repair_stations:data material

execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.tag run data modify storage cartographer_repair_stations:data material set from entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.tag
execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.visual run data modify storage cartographer_repair_stations:data visual set from entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.visual



#Amount
scoreboard players set $amount ca.repair_station_state 2

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:pickaxes run scoreboard players set $amount ca.repair_station_state 2
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:axes run scoreboard players set $amount ca.repair_station_state 2
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:shovels run scoreboard players set $amount ca.repair_station_state 1
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:hoes run scoreboard players set $amount ca.repair_station_state 1
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:swords run scoreboard players set $amount ca.repair_station_state 1

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand bow run scoreboard players set $amount ca.repair_station_state 3
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand crossbow run scoreboard players set $amount ca.repair_station_state 3

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand trident run scoreboard players set $amount ca.repair_station_state 4
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand mace run scoreboard players set $amount ca.repair_station_state 4

execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:foot_armor run scoreboard players set $amount ca.repair_station_state 2
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:leg_armor run scoreboard players set $amount ca.repair_station_state 4
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:chest_armor run scoreboard players set $amount ca.repair_station_state 4
execute if items entity 31192011-4452-2112-0000-000000000000 weapon.mainhand #minecraft:head_armor run scoreboard players set $amount ca.repair_station_state 3


execute if data entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable store result score $amount ca.repair_station_state run data get entity 31192011-4452-2112-0000-000000000000 equipment.mainhand.components."minecraft:custom_data".custom_repairable.count


scoreboard players operation $mat_cost ca.repair_station_state = $amount ca.repair_station_state


scoreboard players set $block ca.repair_station_state 0
setblock 4206900 31 4206900 air replace
data modify storage cartographer_repair_stations:data macro.name set string storage cartographer_repair_stations:data visual 10

function cartographer_repair_stations:station/identify_material_macro_test with storage cartographer_repair_stations:data macro

function cartographer_repair_stations:station/identify_material_macro with storage cartographer_repair_stations:data macro
