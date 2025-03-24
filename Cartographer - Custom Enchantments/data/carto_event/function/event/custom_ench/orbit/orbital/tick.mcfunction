
#If orbs need to be adjustd - do that here
$execute if score duration= carto_event matches 1.. as $(target) if entity @s[tag=ca.adjust_orbs] run function cartographer_custom_enchantments:enchantment/passive/orbit/adjust_rotations with storage carto_event current[-1].parameters
$execute if score duration= carto_event matches 1.. as $(target) if entity @s[tag=ca.adjust_orbs] run tag @s remove ca.adjust_orbs

#Do Orb Behavior Here
$execute if score duration= carto_event matches 1.. as $(target) positioned as $(owner) run tp @s ~ ~ ~

$execute if score duration= carto_event matches 1.. as $(target) on passengers if entity @s[type=item_display] at @s run function carto_event:event/custom_ench/orbit/orbital/rotate with storage carto_event current[-1].parameters
$execute if score duration= carto_event matches 1.. as $(target) on passengers if entity @s[type=item_display] at @s unless score @s ca.orbit_cdl matches 1.. positioned ^$(size) ^1 ^ run function carto_event:event/custom_ench/orbit/orbital/hit_test with storage carto_event current[-1].parameters

$execute if score duration= carto_event matches 1.. as $(target) at @s run scoreboard players set @s ca.entity_purge_var 0



#Kill orbs when they take more than the allowed number of hits
$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. on vehicle run scoreboard players remove @s ca.orbit_ct 1
$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. on vehicle run tag @s add ca.adjust_orbs
$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. run scoreboard players remove $(owner) ca.orbit_ct 1
$execute as $(target) on passengers if entity @s[type=item_display] if entity @s[tag=ca.player_spawned] if score @s ca.orbit_hits matches $(hits).. at @s run playsound minecraft:block.decorated_pot.shatter player @a[distance=..16] ~ ~ ~ 2 0.75
$execute as $(target) on passengers if entity @s[type=item_display] unless entity @s[tag=ca.player_spawned] if score @s ca.orbit_hits matches $(hits).. at @s run playsound minecraft:block.decorated_pot.shatter hostile @a[distance=..16] ~ ~ ~ 2 0.75
$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. run particle minecraft:block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.2 0.2 0.2 0 12 normal

$execute as $(target) on passengers if entity @s[type=item_display] if score @s ca.orbit_hits matches $(hits).. run kill @s

#Kill orbs when they run out of time
$execute as $(target) on passengers if entity @s[type=item_display] unless score @s ca.orbit_time matches 1.. run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) on passengers if entity @s[type=item_display] unless score @s ca.orbit_time matches 1.. on vehicle run scoreboard players remove @s ca.orbit_ct 1
$execute as $(target) on passengers if entity @s[type=item_display] unless score @s ca.orbit_time matches 1.. on vehicle run tag @s add ca.adjust_orbs
$execute as $(target) on passengers if entity @s[type=item_display] unless score @s ca.orbit_time matches 1.. run scoreboard players remove $(owner) ca.orbit_ct 1
$execute as $(target) on passengers if entity @s[type=item_display] unless score @s ca.orbit_time matches 1.. run kill @s

#Kill the orb handler if there are no orbs left - reset orb count of player
$execute as $(target) unless score @s ca.orbit_ct matches 1.. run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) unless score @s ca.orbit_ct matches 1.. run scoreboard players set $(owner) ca.orbit_ct 0
$execute as $(target) unless score @s ca.orbit_ct matches 1.. run kill @s

#Kill everything if the owning entity dies

#Remove Time from Orbs
$execute as $(target) on passengers if entity @s[type=item_display] at @s run scoreboard players remove @s ca.orbit_time 1
$execute as $(target) on passengers if entity @s[type=item_display] at @s if score @s ca.orbit_cdl matches 1.. run scoreboard players remove @s ca.orbit_cdl 1

$execute as $(target) as $(owner) run return 1

#Kill everything if there is no owner left
$execute as $(target) on passengers if entity @s[type=item_display] run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) on passengers if entity @s[type=item_display] run kill @s

$execute as $(target) run scoreboard players remove $count ca.entity_purge_var 1
$execute as $(target) run scoreboard players set $(owner) ca.orbit_ct 0
$execute as $(target) run kill @s


return 0