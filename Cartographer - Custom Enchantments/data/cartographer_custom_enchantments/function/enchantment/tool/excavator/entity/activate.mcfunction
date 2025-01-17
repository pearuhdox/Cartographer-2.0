execute on target run tag @s add ca.excavator_target
execute unless entity @a[tag=ca.excavator_target] run tag @p[distance=..12,gamemode=!creative,gamemode=!spectator] add ca.excavator_target

scoreboard players set $found_block ca.excavator_progress 0
scoreboard players set @s ca.raycast 12
execute if entity @a[distance=..12,gamemode=!creative,gamemode=!spectator] anchored eyes positioned ^ ^ ^ facing entity @p[tag=ca.excavator_target] feet positioned ^ ^ ^0.5 run function cartographer_custom_enchantments:enchantment/tool/excavator/entity/raycast
execute if score $found_block ca.excavator_progress matches 0 if score @s ca.excavator_progress matches 1.. run scoreboard players remove @s ca.excavator_progress 1

tag @a remove ca.excavator_target