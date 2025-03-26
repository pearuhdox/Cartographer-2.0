execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.25 2
tellraw @a {"text":"No death mode selected.","bold":false,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}
tellraw @a {"text":"Charon is disabled until a mode is selected!","bold":false,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","italic":false}]}}

#scoreboard players set $death_drop charon.gmr 1