scoreboard players set $gmr_freeze ca.mutex 1


execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $never_drop_offhand charon.gmr 1

execute if score $never_drop_offhand charon.gmr matches 2.. run scoreboard players set $never_drop_offhand charon.gmr 0

execute if score $never_drop_offhand charon.gmr matches 0 run title @s actionbar [{"text":"Never Drop Offhand ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $never_drop_offhand charon.gmr matches 1 run title @s actionbar [{"text":"Never Drop Offhand ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]