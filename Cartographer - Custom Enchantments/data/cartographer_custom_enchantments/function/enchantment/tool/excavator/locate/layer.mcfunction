$execute store result score $layer_find ca.ench_excavator_lvl run clone ~ ~ ~ ~7 ~ ~7 ~ ~ ~ filtered $(block) move

execute if score $layer_find ca.ench_excavator_lvl matches 1.. run scoreboard players set $row ca.ench_excavator_lvl 0
execute if score $layer_find ca.ench_excavator_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/excavator/locate/row with storage ltos:main data

scoreboard players set $layer_find ca.ench_excavator_lvl 0

scoreboard players add $layer ca.ench_excavator_lvl 1

execute if score $stock ca.ench_excavator_lvl matches 1.. unless score $layer ca.ench_excavator_lvl matches 7.. positioned ~ ~1 ~ run function cartographer_custom_enchantments:enchantment/tool/excavator/locate/layer with storage ltos:main data