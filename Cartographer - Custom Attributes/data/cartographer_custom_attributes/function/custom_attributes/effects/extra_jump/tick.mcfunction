#execute unless entity @s[tag=ca.released_jump_key] unless predicate cartographer_core:player/key_press/jump run say released key
execute unless entity @s[tag=ca.released_jump_key] unless predicate cartographer_core:player/key_press/jump run tag @s add ca.released_jump_key

execute if entity @s[tag=ca.released_jump_key] if predicate cartographer_core:player/key_press/jump run function cartographer_custom_attributes:custom_attributes/effects/extra_jump/jump
execute if entity @s[tag=ca.released_jump_key] if predicate cartographer_core:player/key_press/jump run tag @s remove ca.released_jump_key