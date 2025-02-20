scoreboard players operation @s ca.throwable_multishot = @s ca.ench_multishot_lvl

execute if entity @s[type=player] run function carto_event:event/custom_ench/throwable/throw/branch with storage carto_event current[-1].parameters
execute unless entity @s[type=player] run function carto_event:event/custom_ench/throwable/throw/branch_mob with storage carto_event current[-1].parameters

execute if score @s ca.ench_barrage_lvl matches 1.. run function carto_event:event/custom_ench/throwable/throw/barrage

execute if entity @s[type=player] if score @s ca.ench_throwable_lvl matches 1.. if predicate cartographer_custom_enchantments:has/throwable/offhand_ready unless predicate cartographer_custom_enchantments:has/throwable/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/unapply_offhand
execute if entity @s[type=player] if score @s ca.ench_throwable_lvl matches 1.. if predicate cartographer_custom_enchantments:has/throwable/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/throwable/unapply

execute if entity @s[type=player] run scoreboard players set @s ca.throwable_cooldown 4