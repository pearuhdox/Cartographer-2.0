$execute summon $(id) run function carto_event:event/custom_ench/collapse/run_spawner/data_apply

scoreboard players remove $collapse_spawn_count ca.ench_collapse_lvl 1
execute if score $collapse_spawn_count ca.ench_collapse_lvl matches 1.. run function carto_event:event/custom_ench/collapse/run_spawner/recurse_spawn with storage cartographer_custom_enchantments:collapse
