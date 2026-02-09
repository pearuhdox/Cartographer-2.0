
execute if score @s ca.induction_stack matches 1500.. run scoreboard players set $used_induction ca.induction_stack 1

execute if score $used_induction ca.induction_stack matches 1.. run scoreboard players remove @s ca.induction_stack 1500

execute if score $used_induction ca.induction_stack matches 1.. if entity @s[type=player] run playsound minecraft:item.trident.thunder player @a[distance=..16] ~ ~ ~ 0.8 1.75
execute if score $used_induction ca.induction_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle player @a[distance=..16] ~ ~ ~ 1 2
execute if score $used_induction ca.induction_stack matches 1.. if entity @s[type=player] run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.5 2

execute if score $used_induction ca.induction_stack matches 1.. unless entity @s[type=player] run playsound minecraft:item.trident.thunder hostile @a[distance=..16] ~ ~ ~ 0.8 1.75
execute if score $used_induction ca.induction_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..16] ~ ~ ~ 1 2
execute if score $used_induction ca.induction_stack matches 1.. unless entity @s[type=player] run playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 0.5 2


execute if score $used_induction ca.induction_stack matches 1.. run scoreboard players operation $lvl ca.ench_induction_lvl = $induction ca.ench_value
execute if score $used_induction ca.induction_stack matches 1.. run function cartographer_custom_enchantments:enchantment/passive/induction/get_data

execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_main_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"SelectedItem",cat:"weapon",slot:"mainhand"}
execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_offh_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.offhand",cat:"weapon",slot:"offhand"}

execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_feet_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.feet",cat:"armor",slot:"feet"}
execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_legs_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.legs",cat:"armor",slot:"legs"}
execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_chest_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.chest",cat:"armor",slot:"chest"}
execute if score $used_induction ca.induction_stack matches 1.. if score @s ca.ench_induction_head_lvl matches 1.. run function cartographer_core:handlers/energized/remove_overlay {equip:"equipment.head",cat:"armor",slot:"head"}


function cartographer_custom_enchantments:enchantment/passive/induction/hit_gain
