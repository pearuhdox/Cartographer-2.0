data modify storage cartographer:custom_enchantments active_projectile set value {}
data modify storage cartographer:custom_enchantments active_projectile set from storage cartographer_core:fishing_bobber_data data.enchant_data

scoreboard players set $bobber_hit ca.ench_var 1

#Convert Data to Enchants for use here
function cartographer_custom_enchantments:register/data_to_enchants

#Run Enchants If Valid
execute if data storage cartographer:custom_enchantments active_projectile.enchants run function cartographer_custom_enchantments:system/bobber_landed/target with storage cartographer:custom_enchantments active_projectile

scoreboard players set $bobber_hit ca.ench_var 0