
scoreboard players operation $total_ct ca.stuck_count = @s ca.stuck_count
scoreboard players operation $total_ct ca.stuck_count += @s ca.fishing_stuck

execute if score $total_ct ca.stuck_count matches 1.. run function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/ripper/start_damage

scoreboard players set @s ca.stuck_count 0
scoreboard players set @s ca.fishing_stuck 0

execute unless entity @s[type=player] on passengers if entity @s[type=item_display,tag=ca.stuck_proj_display] run function carto_event:event/stuck_handler/remove_all_visible

playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 0.5 2
playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 0.5 2

playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 0.75 2

execute anchored eyes positioned ^ ^ ^ run particle minecraft:block{block_state:"oak_planks"} ~ ~ ~ 0.2 0.2 0.2 1 8 normal
execute anchored eyes positioned ^ ^ ^ run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0.2 8 normal
