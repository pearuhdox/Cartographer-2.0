execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/up
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/down

execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/east
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/west

execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/south
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:wooden_buttons[powered=true] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/deactivate/north