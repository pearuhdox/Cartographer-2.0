execute unless entity @s[type=player] run attribute @s minecraft:knockback_resistance modifier add ca.restrike_kbr 0.4 add_value
execute if entity @s[type=player] run attribute @s minecraft:knockback_resistance modifier add ca.restrike_kbr 0.5 add_value

$damage @s $(restrike_hit_damage) cartographer_custom_attributes:restrike_hit_damage by $(restrike_owner)

attribute @s minecraft:knockback_resistance modifier remove ca.restrike_kbr

execute if entity @s[type=player] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 0.7 1.4
execute unless entity @s[type=player] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 0.7 1.4

scoreboard players set @s ca.raycast 30
$scoreboard players set $tier_mob ca.restrike_hit_var $(restrike_tier)
execute anchored eyes run function carto_event:event/custom_attribute/restrike_hit/vfx

scoreboard players set @s ca.restrike_time 0