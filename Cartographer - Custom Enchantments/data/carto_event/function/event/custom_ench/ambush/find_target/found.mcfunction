scoreboard players set $found ca.ench_ambush_lvl 1

execute if predicate cartographer_core:periodic_tick/4 run function carto_event:event/custom_ench/ambush/find_target/found_vfx

data modify storage gu:main out set value "-"
function gu:generate
data modify storage carto_event current[-1].parameters.victim set from storage gu:main out