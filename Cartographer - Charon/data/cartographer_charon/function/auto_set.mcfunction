execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 0.25 2
tellraw @a {"text":"No death mode selected.","bold":false,"color":"red","hover_event":{"action":"show_text","value":[{"text":"","italic":false}]}}
tellraw @a {"text":"Charon is disabled until a mode is selected!","bold":false,"color":"red","hover_event":{"action":"show_text","value":[{"text":"","italic":false}]}}

#scoreboard players set $death_drop charon.gmr 1