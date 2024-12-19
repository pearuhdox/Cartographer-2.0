tp @s ~ ~-0.5 ~

gamemode survival @s

execute store result score $threshold ca.shade_health run data get entity @s Health
scoreboard players remove $threshold ca.shade_health 4

execute store result score $damage_dealt ca.shade_health run data get entity @s Health
scoreboard players operation $damage_dealt ca.shade_health -= $diff ca.shade_health
execute if score $damage_dealt ca.shade_health > $threshold ca.shade_health run scoreboard players operation $damage_dealt ca.shade_health = $threshold ca.shade_health

#execute if score $revive_health_pot ca.shade_health matches 1.. run effect give @s instant_health 1 4 true
execute if score $revive_health_pot ca.shade_health matches 1.. run scoreboard players operation @s bbl.damage_queue = $damage_dealt ca.shade_health
execute if score $revive_health_pot ca.shade_health matches 1.. if score @s bbl.damage_queue matches 17.. run scoreboard players set @s bbl.damage_queue 16
execute if score $revive_health_pot ca.shade_health matches 1.. run function bb:call/hpm/player/damage/true

function carto_event:api/create_single_entity_event {event:"shade_behavior/player_respawn",duration:20,delay:000,parameters:{},merge_behavior:"none"}

effect give @s resistance 5 4 true

tag @s add ca.revived_player

execute unless score $shades_auto_revive charon.gmr matches 1.. run title @s actionbar [{"selector":"@p[distance=1..]","color":"gold","italic":false},{"text":" has revived you via your shade!","color":"aqua"}]
execute if score $shades_auto_revive charon.gmr matches 1.. run title @s actionbar [{"text":"You have respawned!","color":"aqua"}]


execute unless score $shades_auto_revive charon.gmr matches 1.. run tellraw @s [{"selector":"@p[distance=1..]","color":"gold","italic":false},{"text":" has revived you via your shade!","color":"aqua"}]
execute if score $shades_auto_revive charon.gmr matches 1.. run tellraw @s [{"text":"You have respawned!","color":"aqua"}]

tellraw @s {"text":"You have returned to your death location.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"Your items have been returned to you.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
