scoreboard players add $count ca.entity_purge_var 1
tag @s add ca.purgable_entity

tag @s add ca.in_custom_stack

data merge entity @s {billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,180f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute store result entity @s transformation.translation[1] float 0.0001 run scoreboard players add $offset ca.stack_var 1000