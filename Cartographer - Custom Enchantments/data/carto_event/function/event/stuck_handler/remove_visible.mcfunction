scoreboard players set $stuck_remove ca.ench_var 0
execute on vehicle if entity @s[tag=!ca.remove_stuck_visible] run scoreboard players set $stuck_remove ca.ench_var 1
execute on vehicle if entity @s[tag=!ca.remove_stuck_visible] run tag @s add ca.remove_stuck_visible

execute if score $stuck_remove ca.ench_var matches 1.. at @s run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 0.5 2
execute if score $stuck_remove ca.ench_var matches 1.. at @s run particle minecraft:block{block_state:"oak_planks"} ~ ~ ~ 0.2 0.2 0.2 1 8 normal
execute if score $stuck_remove ca.ench_var matches 1.. run kill @s
