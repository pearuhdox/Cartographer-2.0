scoreboard players set $found ca.ench_ambushing_lvl 1

execute if predicate cartographer_core:periodic_tick/4 run function carto_event:event/custom_ench/ambushing/find_target/found_vfx

tp 31182015-1791-2513-1181-151800000000 ~ ~ ~

data modify storage carto_event current[-1].parameters.x set from entity 31182015-1791-2513-1181-151800000000 Pos[0]
data modify storage carto_event current[-1].parameters.y set from entity 31182015-1791-2513-1181-151800000000 Pos[1]
data modify storage carto_event current[-1].parameters.z set from entity 31182015-1791-2513-1181-151800000000 Pos[2]

tp 31182015-1791-2513-1181-151800000000 4206900 0 4206900