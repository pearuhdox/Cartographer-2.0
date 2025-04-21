scoreboard players operation $damage ca.ench_var = $focus ca.ench_value
scoreboard players operation $damage ca.ench_var *= $50 ca.CONSTANT

execute on attacker run scoreboard players add @s ca.focus_stacks 1
execute on attacker if score @s ca.focus_stacks matches 5.. run scoreboard players set @s ca.focus_stacks 4

execute on attacker run scoreboard players operation $damage ca.ench_var *= @s ca.focus_stacks

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $damage ca.ench_var

function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/damage with storage cartographer:custom_enchantments

execute on attacker unless entity @s[tag=ca.focus_active] run function carto_event:api/create_single_entity_event {event:"custom_ench/focus/active",duration:120,delay:1,parameters:{},merge_behavior:"merge"}
execute on attacker run tag @s add ca.focus_applied