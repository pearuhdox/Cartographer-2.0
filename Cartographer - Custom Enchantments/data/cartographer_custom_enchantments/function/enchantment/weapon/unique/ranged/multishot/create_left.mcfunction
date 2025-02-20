scoreboard players add $multishot_yaw ca.ench_multishot_lvl 625

$execute positioned ^ ^ ^ facing ^$(rotation) ^ ^1 rotated ~ ~ positioned ^ ^ ^0.25 summon $(projectile_type) run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/multishot/spawn_branch

scoreboard players remove $multishot_ct ca.ench_multishot_lvl 1

$execute positioned ^ ^ ^ facing ^$(rotation) ^ ^1 rotated ~ ~ positioned ^ ^ ^ if score $multishot_ct ca.ench_multishot_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/multishot/create_left with storage cartographer:custom_enchantments