playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 1 0.75

scoreboard players set @s ca.barricade_shields 0

tag @s remove ca.has_custom_status_barricade

scoreboard players set $remove_barricade ca.status_var 1

scoreboard players set $he_override ca.status_var 0
execute if data entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect run scoreboard players set $he_override ca.status_var 1
execute unless score $he_override ca.status_var matches 1.. run effect clear @s minecraft:resistance

execute unless entity @s[type=player] run particle minecraft:poof ~ ~1 ~ 0.25 0.25 0.25 0.05 15 normal

execute if score $he_override ca.status_var matches 1.. run function carto_event:event/custom_statuses/barricade/hidden_effect