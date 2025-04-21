execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 1.. run tag @s add ca.quick_strike_processed
execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 1.. run playsound minecraft:entity.player.attack.weak player @a[distance=..16] ~ ~ ~ 1 0.5
execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 1.. run playsound minecraft:entity.player.attack.knockback player @a[distance=..16] ~ ~ ~ 1 2
execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 1.. run scoreboard players remove @s ca.quick_strike_stacks 1

#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run function carto_event:api/create_single_entity_event {event:"custom_ench/quick_strike/cooldown",duration:601,delay:0,parameters:{},merge_behavior:"merge"}
execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run playsound minecraft:block.bubble_column.whirlpool_inside player @s ~ ~ ~ 1.0 1.7
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players operation $cooldown ca.quick_strike_cooldown = @s ca.ench_quick_strike_lvl
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players operation $cooldown ca.quick_strike_cooldown *= $20 ca.CONSTANT
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players add $cooldown ca.quick_strike_cooldown 20
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players operation $cooldown ca.quick_strike_cooldown > $200 ca.CONSTANT
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players add $cooldown ca.quick_strike_cooldown 1
#execute if score @s ca.quick_strike_active matches 1.. if score @s ca.quick_strike_stacks matches 0 run scoreboard players operation @s ca.quick_strike_cooldown = $cooldown ca.quick_strike_cooldown

execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run tag @s add ca.quick_strike_processed
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run scoreboard players operation @s ca.quick_strike_stacks = @s ca.ench_quick_strike_lvl
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run playsound minecraft:entity.illusioner.prepare_blindness player @s ~ ~ ~ 0.7 1.4
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run function carto_event:api/create_single_entity_event {event:"custom_ench/quick_strike",duration:601,delay:0,parameters:{},merge_behavior:"merge"}
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run scoreboard players operation $active ca.quick_strike_active = @s ca.ench_quick_strike_lvl
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run scoreboard players operation $active ca.quick_strike_active *= $20 ca.CONSTANT
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run scoreboard players add $active ca.quick_strike_active 20
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run scoreboard players add $active ca.quick_strike_active 1
execute unless score @s ca.quick_strike_active matches 1.. if predicate cartographer_custom_enchantments:has/quick_strike/mainhand_ready run function cartographer_custom_enchantments:enchantment/weapon/unique/melee/quick_strike/hit_start