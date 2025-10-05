
scoreboard players set $shades_auto_revive charon.gmr 0
execute if score @s ca.options_trig matches 3025 run scoreboard players set $shades_auto_revive charon.gmr 1

execute if score $shades_auto_revive charon.gmr matches 1.. run tellraw @s {"color":"green","text":"Shades Auto Respawn has been Enabled!"}
execute unless score $shades_auto_revive charon.gmr matches 1.. run tellraw @s {"color":"red","text":"Shades Auto Respawn has been Disabled!"}

scoreboard players set @s ca.options_trig 0
function cartographer_charon:options/show/gamerule/multiplayer/auto_respawn