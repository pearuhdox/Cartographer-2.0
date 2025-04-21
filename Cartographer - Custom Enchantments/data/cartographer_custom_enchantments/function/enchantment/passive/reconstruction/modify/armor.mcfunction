execute if score $reconstruct_slot ca.ench_var matches 100 run loot replace entity @s armor.feet 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if score $reconstruct_slot ca.ench_var matches 101 run loot replace entity @s armor.legs 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if score $reconstruct_slot ca.ench_var matches 102 run loot replace entity @s armor.chest 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]
execute if score $reconstruct_slot ca.ench_var matches 103 run loot replace entity @s armor.head 1 mine 4206900 0 4206900 dirt[minecraft:custom_data={drop_contents:1b}]

tag @s add ca.cancel_armor_noise
schedule function cartographer_core:handlers/cancel_armor_noise/start 2t replace

tag @s add ca.suppress_inv_update