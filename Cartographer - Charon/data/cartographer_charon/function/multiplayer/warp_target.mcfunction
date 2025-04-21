tp @s ~ ~-0.5 ~

gamemode survival @s

execute store result score $threshold ca.shade_health run data get entity @s Health 10
scoreboard players remove $threshold ca.shade_health 40

execute store result score $damage_dealt ca.shade_health run data get entity @s Health 10
scoreboard players operation $damage_dealt ca.shade_health -= $diff ca.shade_health
execute if score $damage_dealt ca.shade_health > $threshold ca.shade_health run scoreboard players operation $damage_dealt ca.shade_health = $threshold ca.shade_health

#execute if score $revive_health_pot ca.shade_health matches 1.. run effect give @s instant_health 1 4 true
execute if score $revive_health_pot ca.shade_health matches 1.. run scoreboard players operation @s ca.damage = $damage_dealt ca.shade_health
execute if score $revive_health_pot ca.shade_health matches 1.. if score @s ca.damage matches 161.. run scoreboard players set @s ca.damage 160
execute if score $revive_health_pot ca.shade_health matches 1.. run function cartographer_core:helper/damage_player/apply_damage

function carto_event:api/create_single_entity_event {event:"shade_behavior/player_respawn",duration:20,delay:0,parameters:{},merge_behavior:"none"}

effect give @s resistance 5 4 true

tag @s add ca.revived_player

execute unless score $shades_auto_revive charon.gmr matches 1.. run title @s actionbar {"translate":"cartographer.charon.shade.revive.auto_off","fallback":"%s has revived you via your shade!","color":"aqua","with":[{"selector":"@p[distance=1..]","color":"gold","italic":false}]}
execute if score $shades_auto_revive charon.gmr matches 1.. run title @s actionbar {"translate":"cartographer.charon.shade.revive.auto_on","fallback":"You have respawned!","color":"aqua"}

execute unless score $shades_auto_revive charon.gmr matches 1.. run tellraw @s {"translate":"cartographer.charon.shade.revive.auto_off","fallback":"%s has revived you via your shade!","color":"aqua","with":[{"selector":"@p[distance=1..]","color":"gold","italic":false}]}
execute if score $shades_auto_revive charon.gmr matches 1.. run tellraw @s {"translate":"cartographer.charon.shade.revive.auto_on","fallback":"You have respawned!","color":"aqua"}

tellraw @s {"translate":"cartographer.charon.shade.revive.1","fallback":"You have returned to your death location.","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":[{"text":"","color":"aqua"}]}}
tellraw @s {"translate":"cartographer.charon.shade.revive.2","fallback":"Your items have been returned to you.","color":"yellow","italic":false,"hover_event":{"action":"show_text","value":[{"text":"","color":"aqua"}]}}
