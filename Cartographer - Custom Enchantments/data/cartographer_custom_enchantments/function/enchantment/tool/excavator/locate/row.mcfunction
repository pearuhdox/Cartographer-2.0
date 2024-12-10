$execute store result score $row_find ca.ench_excavator_lvl run clone ~ ~ ~ ~7 ~ ~ ~ ~ ~ filtered $(block) move

execute if score $row_find ca.ench_excavator_lvl matches 1.. run function cartographer_custom_enchantments:enchantment/tool/excavator/locate/block with storage ltos:main data

scoreboard players set $row_find ca.ench_excavator_lvl 0

scoreboard players add $row ca.ench_excavator_lvl 1

execute if score $stock ca.ench_excavator_lvl matches 1.. unless score $row ca.ench_excavator_lvl matches 7.. positioned ~ ~ ~1 run function cartographer_custom_enchantments:enchantment/tool/excavator/locate/row with storage ltos:main data