scoreboard players remove @s ca.boons 1
tellraw @s {"translate":"cartographer.charon.boons.take","fallback":"A Boon has been taken away to protect your items!","color":"#EB87FF"}
execute if score @s ca.boons matches 1.. run tellraw @s {"translate":"cartographer.charon.boons.remaining","fallback":"Boons Remaining: %s","color":"gold","with":[{"score":{"name":"@s","objective":"ca.boons"},"color":"green","bold":true}]}
execute if score @s ca.boons matches 0 run tellraw @s [{"text":"☠ ","color":"red"},{"translate":"cartographer.charon.boons.no_remaining","fallback":"Out Of Boons","bold":true},{"text":" ☠","bold":false}]

execute if score @s ca.boons matches 1.. run playsound minecraft:block.bell.resonate player @a[distance=..8] ~ ~ ~ 1 2
execute if score @s ca.boons matches 0 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..8] ~ ~ ~ 1 2

playsound minecraft:block.sculk_vein.place player @a[distance=..8] ~ ~ ~ 2 0.5
playsound minecraft:entity.allay.hurt player @a[distance=..8] ~ ~ ~ 0.8 0.6

#Fix death count to be accurate for items
scoreboard players remove @s charon.death_count 1