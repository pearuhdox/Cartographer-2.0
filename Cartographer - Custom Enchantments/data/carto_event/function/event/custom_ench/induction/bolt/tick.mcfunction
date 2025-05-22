data modify storage cartographer:custom_enchantments custom_statuses set value {}
$execute as $(owner) at @s run function carto_event:event/custom_ench/induction/custom_statuses/check_allow_status

$execute as $(target) at @s run function carto_event:event/custom_ench/induction/bolt/damage with storage carto_event current[-1].parameters

execute store result score $spread ca.ench_induction_lvl run data get storage carto_event current[-1].parameters.spread
scoreboard players remove $spread ca.ench_induction_lvl 1
execute store result storage carto_event current[-1].parameters.spread int 1 run scoreboard players get $spread ca.ench_induction_lvl

data modify storage carto_event current[-1].parameters.previous set from storage carto_event current[-1].parameters.target


$execute if score $spread ca.ench_induction_lvl matches 1.. as $(target) at @s if entity @s[type=player] as @a[distance=..$(length),limit=1,sort=nearest,tag=!ca.induction_cdl] at @s run function carto_event:event/custom_ench/induction/bolt/transfer with storage carto_event current[-1].parameters

scoreboard players set $success ca.ench_induction_lvl 0
$execute if score $spread ca.ench_induction_lvl matches 1.. as $(target) at @s unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=..$(length),limit=1,sort=nearest,tag=!ca.induction_cdl] at @s store result score $success ca.ench_induction_lvl run function carto_event:event/custom_ench/induction/bolt/transfer with storage carto_event current[-1].parameters

$execute unless score $success ca.ench_induction_lvl matches 1.. if score $spread ca.ench_induction_lvl matches 1.. as $(target) at @s unless entity @s[type=player] as @e[type=#cartographer_core:affected_by_carto,distance=0.1..$(length),limit=1,sort=nearest] at @s store result score $success ca.ench_induction_lvl run function carto_event:event/custom_ench/induction/bolt/transfer with storage carto_event current[-1].parameters

$execute unless score $success ca.ench_induction_lvl matches 1.. if score $spread ca.ench_induction_lvl matches 1.. as $(target) at @s unless entity @s[type=player] run function carto_event:event/custom_ench/induction/bolt/transfer_fail with storage carto_event current[-1].parameters

return 0