scoreboard players add @s ca.excavator_progress 1

execute unless score @s ca.excavator_progress matches 5.. positioned ~ ~ ~ run function cartographer_core:handlers/get_block/save
execute unless score @s ca.excavator_progress matches 5.. run data modify storage cartographer:custom_enchantments block set from storage cartographer_core:get_block id

execute unless score @s ca.excavator_progress matches 5.. run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/particle with storage cartographer:custom_enchantments
execute unless score @s ca.excavator_progress matches 5.. run playsound minecraft:block.stone.hit hostile @a[distance=..16] ~ ~ ~
execute if score @s ca.excavator_progress matches 5.. run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/break

scoreboard players set $found_block ca.excavator_progress 1
scoreboard players set @s ca.raycast 0