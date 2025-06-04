scoreboard players set $vfx ca.momentum_stack 0

execute if score @s ca.momentum_stack matches 501.. if score $previous ca.momentum_stack matches ..500 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 1001.. if score $previous ca.momentum_stack matches ..1000 run scoreboard players set $vfx ca.momentum_stack 1
execute if score @s ca.momentum_stack matches 1500.. if score $previous ca.momentum_stack matches ..1499 run scoreboard players set $vfx ca.momentum_stack 1

execute if score $vfx ca.momentum_stack matches 1.. run playsound minecraft:entity.breeze.idle_air player @s ~ ~ ~ 0.25 1
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. run playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 1 1

execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_main_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"SelectedItem",cat:"weapon",slot:"mainhand"}
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_offh_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"equipment.offhand",cat:"weapon",slot:"offhand"}

execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_feet_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"equipment.feet",cat:"armor",slot:"feet"}
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_legs_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"equipment.legs",cat:"armor",slot:"legs"}
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_chest_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"equipment.chest",cat:"armor",slot:"chest"}
execute if score $vfx ca.momentum_stack matches 1.. if score @s ca.momentum_stack matches 1500.. if score @s ca.ench_momentum_head_lvl matches 1.. run function cartographer_core:handlers/energized/add_overlay {equip:"equipment.head",cat:"armor",slot:"head"}
