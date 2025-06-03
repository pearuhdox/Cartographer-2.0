scoreboard players set $spawner_cause ca.ench_var 1


scoreboard players set $used_induction ca.induction_stack 0
execute if score @s ca.induction_stack matches 1500.. run scoreboard players set $used_induction ca.induction_stack 1

execute if score $used_induction ca.induction_stack matches 1.. run scoreboard players remove @s ca.induction_stack 1500

execute if score $used_induction ca.induction_stack matches 1.. run playsound minecraft:item.trident.thunder player @a[distance=..16] ~ ~ ~ 0.8 1.75
execute if score $used_induction ca.induction_stack matches 1.. run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 2
execute if score $used_induction ca.induction_stack matches 1.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.5 2

execute if score $used_induction ca.induction_stack matches 1.. run scoreboard players operation $induction_hand ca.ench_value = @s ca.ench_induction_main_lvl

execute if score $used_induction ca.induction_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/get_data

execute if score $used_induction ca.induction_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/create_bolt_attacker

execute if score $used_induction ca.induction_stack matches 1.. as @e[type=#cartographer_core:affected_by_carto,distance=..16,limit=1,sort=nearest] run function cartographer_custom_enchantments:enchantment/passive/induction/create_bolt

scoreboard players set $used_induction ca.induction_stack 0

scoreboard players set $spawner_cause ca.ench_var 0


scoreboard players operation $previous ca.induction_stack = @s ca.induction_stack

scoreboard players add @s ca.induction_stack 100
function cartographer_custom_enchantments:enchantment/passive/induction/tier_up_player_vfx