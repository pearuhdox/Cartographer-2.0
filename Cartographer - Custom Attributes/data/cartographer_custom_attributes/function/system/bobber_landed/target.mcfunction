execute store result score $bobber_damage ca.attr_apply_var run data get storage cartographer:custom_attributes active_projectile.damage 10

scoreboard players set $bobber_pull ca.attr_var 0
execute if entity @s[tag=ca.tagged_entity] run scoreboard players set $bobber_pull ca.attr_var 1

$tag $(owner) add ca.bobber_owner

execute if score $bobber_damage ca.attr_apply_var matches 1.. run function cartographer_custom_attributes:system/bobber_landed/damage with storage cartographer:custom_attributes active_projectile

$tag $(owner) remove ca.bobber_owner