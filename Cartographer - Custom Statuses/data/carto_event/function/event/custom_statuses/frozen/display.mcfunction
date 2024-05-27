execute if entity @s[type=#cartographer_core:shapes/humanoid] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-2f,-0.4f],scale:[0.75f,2f,0.75f]}}
execute if entity @s[type=#cartographer_core:shapes/tall_humanoid] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-3f,-0.4f],scale:[0.75f,3f,0.75f]}}

execute if entity @s[type=#cartographer_core:shapes/smaller_square] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.35f,-0.25f],scale:[0.5f,0.6f,0.5f]}}
execute if entity @s[type=#cartographer_core:shapes/small_square] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.7f,-0.5f],scale:[1f,1f,1f]}}
execute if entity @s[type=#cartographer_core:shapes/large_square] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,-2f,-1.25f],scale:[2.5f,2.5f,2.5f]}}

execute if entity @s[type=ghast] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-2.6f,-5f,-2.6f],scale:[5.2f,5.2f,5.2f]}}

#execute if entity @s[type=#minecraft:skeletons] on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4f,-2f,-0.4f],scale:[0.75f,2f,0.75f]}}

execute on passengers if entity @s[type=block_display,tag=ca.status_frozen_display,tag=ca.new] run tag @s remove ca.new