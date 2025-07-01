
#Before doing any code, if this entity has already been processed, we skip it
execute if entity @s[tag=ca.in_custom_stack] on passengers run function carto_event:event/mob_utils/stacking/separate/setup/get_target
execute if entity @s[tag=ca.in_custom_stack] on passengers run return run function carto_event:event/mob_utils/stacking/separate/setup/rec

#Apply basic tags for the entity
tag @s add ca.in_custom_stack

execute if score $linked ca.stack_var matches 1 run tag @s add ca.stack_linked

#Figure out what type of entity this is - also figure out if it has a vehicle and passenger
scoreboard players set $entity ca.stack_var 0
scoreboard players set $item ca.stack_var 0
scoreboard players set $vehicle ca.stack_var 0
scoreboard players set $passenger ca.stack_var 0
execute unless entity @s[type=item_display] run scoreboard players set $entity ca.stack_var 1
execute if entity @s[type=item_display] run scoreboard players set $item ca.stack_var 1
execute on vehicle run scoreboard players set $vehicle ca.stack_var 1
execute on passengers run scoreboard players set $passenger ca.stack_var 1

#Iteration
execute if score $entity ca.stack_var matches 1.. run scoreboard players set $offset ca.stack_var -2000

#Add the passenger or vehicle tags if valid
execute if score $passenger ca.stack_var matches 1 run tag @s add ca.has_passenger
execute if score $vehicle ca.stack_var matches 1 run tag @s add ca.has_vehicle

#If the entity does not have a vehicle but DOES have a passenger - this is the bottom entity. We do no iteration on this entity. Proceed to the next entity.
execute if score $vehicle ca.stack_var matches 0 if score $passenger ca.stack_var matches 1 on passengers run function carto_event:event/mob_utils/stacking/separate/setup/get_target
execute if score $vehicle ca.stack_var matches 0 if score $passenger ca.stack_var matches 1 on passengers run return run function carto_event:event/mob_utils/stacking/separate/setup/rec

#If the entity does not have a passenger but DOES have a vehicle - this is the top entity. We do not need to iterate further or create an item display. End the recursion.
execute if score $passenger ca.stack_var matches 0 if score $vehicle ca.stack_var matches 1 on passengers run return 0


#Is this entity an item display? If so it needs to gain the tags to allow the item display to have behavior on entity removal.
execute if score $item ca.stack_var matches 1 run function carto_event:event/mob_utils/stacking/separate/setup/modify_item_display

#Is this entity not an item display? If it also has a vehicle that is NOT an item display, it needs to have an item display created to separate the stack.
#First we need to set the vehicle parameter to be the vehicle entity for UUID purposes.
execute if score $entity ca.stack_var matches 1 if score $vehicle ca.stack_var matches 1.. on vehicle run function carto_event:event/mob_utils/stacking/separate/setup/get_vehicle
#Then create the new entity and setup the riding correctly - make the entity then force it to ride the vehicle, then force the target to ride the display
tag @s add ca.stack_entity
execute if score $entity ca.stack_var matches 1 on vehicle unless entity @s[type=item_display] on passengers if entity @s[tag=ca.stack_entity] summon item_display run function carto_event:event/mob_utils/stacking/separate/setup/create_item_display with storage carto_event current[-1].parameters
tag @s remove ca.stack_entity

#After manipulating the stack, we then want to move our iteration up one entity
execute if score $passenger ca.stack_var matches 1 on passengers run function carto_event:event/mob_utils/stacking/separate/setup/get_target
execute if score $passenger ca.stack_var matches 1 on passengers run function carto_event:event/mob_utils/stacking/separate/setup/rec
