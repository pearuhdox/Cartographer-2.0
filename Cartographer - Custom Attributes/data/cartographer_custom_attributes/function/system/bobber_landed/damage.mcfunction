$execute unless score $bobber_pull ca.attr_var matches 1.. run damage @s $(damage) cartographer_custom_attributes:fishing_bobber_damage by $(owner)

$execute if score $bobber_pull ca.attr_var matches 1.. run damage @s $(damage) cartographer_custom_attributes:fishing_bobber_damage_bypass by $(owner)
