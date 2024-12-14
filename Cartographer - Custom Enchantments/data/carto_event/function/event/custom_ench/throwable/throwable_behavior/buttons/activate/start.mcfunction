execute positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/up
execute positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/down

execute positioned ~1 ~ ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/east
execute positioned ~-1 ~ ~ if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/west

execute positioned ~ ~ ~1 if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/south
execute positioned ~ ~ ~-1 if block ~ ~ ~ #minecraft:wooden_buttons[powered=false] run function carto_event:event/custom_ench/throwable/throwable_behavior/buttons/activate/north