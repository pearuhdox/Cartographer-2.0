execute if score $linked ca.stack_var matches 1 run tag @s add ca.stack_linked

tag @s add ca.in_custom_stack
execute on passengers on vehicle run tag @s add ca.has_passenger
execute on vehicle on passengers run tag @s add ca.has_vehicle


execute unless entity @s[type=item_display] run scoreboard players set $offset ca.stack_var -2000
execute if entity @s[type=item_display] run data merge entity @s {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if entity @s[type=item_display] store result entity @s transformation.translation[1] float 0.0001 run scoreboard players add $offset ca.stack_var 1000

execute on passengers run function carto_event:event/mob_utils/stacking/setup/rec
#tag @s remove ca.has_passenger