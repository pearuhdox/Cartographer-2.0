scoreboard players set $gmr_freeze ca.mutex 1


execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $give_compass charon.gmr 1

execute if score $give_compass charon.gmr matches 2.. run scoreboard players set $give_compass charon.gmr 0

execute if score $give_compass charon.gmr matches 0 run title @s actionbar [{"text":"Death Compass ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
execute if score $give_compass charon.gmr matches 1 run title @s actionbar [{"text":"Death Compass ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
