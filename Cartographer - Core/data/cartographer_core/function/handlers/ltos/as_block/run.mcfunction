scoreboard players set $ltos_check ca.var 1
data modify storage cartographer_core:ltos check set value "spawner"
execute store result score $ltos_check ca.var run data modify storage cartographer_core:ltos check set from storage ltos:main data.block
execute if score $ltos_check ca.var matches 0 run function cartographer_core:handlers/ltos/as_block/spawner with storage ltos:main macro

$execute if score $custom_enchantments ca.installed matches 1.. as $(destroyer) run function cartographer_core:handlers/ltos/as_block/custom_enchantments_tool

#Debug Message
tellraw @a[scores={ca.debug_lvl=3..}] [{"text":"[Debug] ","color":"red"},{"text":"[LTOS Handler] ","color":"yellow"},{"text":"❱ ","color":"#FFE0A3"},{"selector":"@s","color":"aqua"},{"text":" Block Destroyed (As Block).","color":"#FFE0A3"}]