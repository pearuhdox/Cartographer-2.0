scoreboard players set $gmr_freeze ca.mutex 1


execute as @p at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 2

scoreboard players add $vanish_tax ca.gamerule 1

execute if score $vanish_tax ca.gamerule matches 4.. run scoreboard players set $vanish_tax ca.gamerule 0

scoreboard players set $tax_vanish charon.gmr 0


execute if score $vanish_tax ca.gamerule matches 0 run scoreboard players set $tax_vanish charon.gmr 0
execute if score $vanish_tax ca.gamerule matches 1 run scoreboard players set $tax_vanish charon.gmr 10
execute if score $vanish_tax ca.gamerule matches 2 run scoreboard players set $tax_vanish charon.gmr 20
execute if score $vanish_tax ca.gamerule matches 3 run scoreboard players set $tax_vanish charon.gmr 30

execute if score $vanish_tax ca.gamerule matches 0 run title @s actionbar [{"text":"Item Vanishing Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"OFF","color":"green","italic":false}]
execute if score $vanish_tax ca.gamerule matches 1 run title @s actionbar [{"text":"Item Vanishing Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"LOW","color":"yellow","italic":false}]
execute if score $vanish_tax ca.gamerule matches 2 run title @s actionbar [{"text":"Item Vanishing Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"MODERATE","color":"yellow","italic":false}]
execute if score $vanish_tax ca.gamerule matches 3 run title @s actionbar [{"text":"Item Vanishing Tax ","color":"aqua","italic":false},{"text":"set to ","color":"#FFE0A3","italic":false},{"text":"HIGH","color":"red","italic":false}]