scoreboard players set $type ca.resistor_var 0

#type 101 is projectile
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run scoreboard players set $type ca.resistor_var 101

#type 102 is explosion
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_explosion=true}}] run scoreboard players set $type ca.resistor_var 102

#type 103 is magic
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={bypasses_armor=true}}] run scoreboard players set $type ca.resistor_var 103

#type 104 is fire
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_fire=true}}] run scoreboard players set $type ca.resistor_var 104

#type 105 is freeze
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_freezing=true}}] run scoreboard players set $type ca.resistor_var 105

#type 106 is fall
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_fall=true}}] run scoreboard players set $type ca.resistor_var 106

#type 107 is drown
execute unless score $type ca.resistor_var matches 1.. if entity @s[advancements={entityid:entity_hurt_player={is_drowning=true}}] run scoreboard players set $type ca.resistor_var 107

#if damage does not bypass cooldown - set i-frames to 10
#execute unless entity @s[advancements={entityid:entity_hurt_player={bypass_cooldown=true}}] run scoreboard players set @s ca.resistor_frames 10
scoreboard players set @s ca.resistor_frames 10

#if no type has been specified we assume type 110 - melee damage
execute unless score $type ca.resistor_var matches 1.. run scoreboard players set $type ca.resistor_var 110

function cartographer_core:handlers/resistor/process/calc_damage