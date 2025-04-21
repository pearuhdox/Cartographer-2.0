execute if entity @s[type=#cartographer_core:projectile/arrow] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/arrow/start

execute if entity @s[type=#cartographer_core:projectile/throwable,type=!#cartographer_core:potions] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/throwable/start

execute if entity @s[type=fishing_bobber] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/bobber/start

execute if entity @s[type=#cartographer_core:potions] if data entity @s Item.components.minecraft:custom_data.use_ranged_damage run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/potion/start
scoreboard players set $do_potion_override ca.attr_apply_var 0
execute if entity @s[type=#cartographer_core:potions] on origin if entity @s[tag=ca.use_ranged_damage_potion] run scoreboard players set $do_potion_override ca.attr_apply_var 1
execute if score $do_potion_override ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/potion/start

scoreboard players set $stop ca.custom_trident 0
execute on origin if score @s ca.attr_ranged_damage_value matches 0 run scoreboard players set $stop ca.custom_trident 1
execute if entity @s[type=trident] run function cartographer_custom_attributes:custom_attributes/effects/ranged_damage/trident/start