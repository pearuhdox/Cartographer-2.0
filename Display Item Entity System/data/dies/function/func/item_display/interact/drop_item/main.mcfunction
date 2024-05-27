
execute if score @s dies.object.frame_facing matches 0 positioned ~ ~-.3 ~ run function dies:func/item_display/interact/drop_item/summon_dummy_item
execute if score @s dies.object.frame_facing matches 1 positioned ~ ~.126 ~ run function dies:func/item_display/interact/drop_item/summon_dummy_item
execute if score @s dies.object.frame_facing matches 2 positioned ~ ~.1 ~-.2 run function dies:func/item_display/interact/drop_item/summon_dummy_item
execute if score @s dies.object.frame_facing matches 3 positioned ~ ~.1 ~.2 run function dies:func/item_display/interact/drop_item/summon_dummy_item
execute if score @s dies.object.frame_facing matches 4 positioned ~-.2 ~.1 ~ run function dies:func/item_display/interact/drop_item/summon_dummy_item
execute if score @s dies.object.frame_facing matches 5 positioned ~.2 ~.1 ~ run function dies:func/item_display/interact/drop_item/summon_dummy_item

execute store result score $has_index_id dies.master run data get entity @s item.components."minecraft:custom_data".iii_data.id

execute if score $has_index_id dies.master matches 0 run data modify entity @e[type=item,distance=..1,limit=1,sort=nearest,tag=dies.new_item] Item set from entity @s item
execute if score $has_index_id dies.master matches 1.. run function dies:func/item_display/interact/drop_item/set_from_iii/set_id

execute as @e[type=item,distance=..1,limit=1,sort=nearest,tag=dies.new_item] at @s run function dies:func/item_display/interact/drop_item/as_item


function #minecraft:dies/pickup_item

function dies:func/item_display/interact/drop_item/sound

function dies:func/kill_stack/from_vehicle
