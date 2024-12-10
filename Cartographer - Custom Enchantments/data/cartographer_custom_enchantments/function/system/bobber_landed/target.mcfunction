scoreboard players set $bobber_pull ca.attr_var 0
execute if entity @s[tag=ca.tagged_entity] run scoreboard players set $bobber_pull ca.attr_var 1

$tag $(owner) add ca.bobber_owner

function cartographer_custom_enchantments:system/bobber_landed/apply_enchant

$tag $(owner) remove ca.bobber_owner