scoreboard players set $gmr_freeze ca.mutex 1


execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $no_death_note charon.gmr 1

execute if score $no_death_note charon.gmr matches 2.. run scoreboard players set $no_death_note charon.gmr 0

execute if score $no_death_note charon.gmr matches 0 run title @s actionbar [{"text":"Lexica Death Note ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"ENABLED","color":"green","italic":false}]
execute if score $no_death_note charon.gmr matches 1 run title @s actionbar [{"text":"Lexica Death Note ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"DISABLED","color":"red","italic":false}]
