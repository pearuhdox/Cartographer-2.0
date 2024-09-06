#Do a player damage check
scoreboard players operation $ranged_damage ca.attr_apply_var = @s ca.attr_ranged_damage_total

scoreboard players set @s ca.raycast 60
execute positioned ^ ^-0.75 ^ run function carto_event:event/custom_attribute/trident/landed/raycast

summon trident ~ ~ ~ {DealtDamage:1b,Tags:["ca.custom_trident_drop"],pickup:1b}

execute on passengers run data modify storage cartographer_custom_attributes:trident owner set from entity @s data.Owner
data modify storage cartographer_custom_attributes:trident item set from entity @s item

execute as @e[type=trident,limit=1,sort=nearest,tag=ca.custom_trident_drop] at @s run function carto_event:event/custom_attribute/trident/landed/drop with storage carto_event current[-1].parameters

playsound minecraft:item.trident.hit player @a ~ ~ ~ 0.5 1

execute on passengers run kill @s
kill @s