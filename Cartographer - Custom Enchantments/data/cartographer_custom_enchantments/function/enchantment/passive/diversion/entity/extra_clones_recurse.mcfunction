
scoreboard players remove $extra_clones ca.ench_diversion_lvl 1

function cartographer_custom_enchantments:enchantment/passive/diversion/entity/spawn_clones_macro with storage cartographer:custom_enchantments

execute if score $extra_clones ca.ench_diversion_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/passive/diversion/entity/extra_clones_recurse