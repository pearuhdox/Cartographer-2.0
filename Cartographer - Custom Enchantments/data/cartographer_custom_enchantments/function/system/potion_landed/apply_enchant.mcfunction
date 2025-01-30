#Do Weapon Damage Enchantments
execute if score $hex_eater ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hex_eater/hit
execute if score $chaotic ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/chaotic/hit
execute if score $duelist ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/duelist/hit
execute if score $hunter ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/hunter/hit

execute if score $first_strike ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/first_strike/hit
execute if score $follow_up ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/hit
execute if score $focus ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/focus/hit
execute if score $concentration ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/general/concentration/hit

#execute if score $rushdown ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/rushdown/hit
#execute if score $leverage ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/melee/leverage/hit

execute if score $overcharge ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/overcharge/hit
execute if score $point_blank ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/point_blank/hit
execute if score $sharpshot ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/damage/ranged/sharpshot/hit

execute if score $explosive ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/explosive/hit
execute if score $pulling ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/general/pulling/hit

execute if score $shrapnel ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/shrapnel/hit
execute if score $ripper ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/hit
execute if score $barbed ca.ench_value matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/barbed/hit

tag @s remove ca.did_ench_particles