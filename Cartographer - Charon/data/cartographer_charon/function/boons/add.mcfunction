scoreboard players add @s ca.boons 1
tellraw @s {"translate":"cartographer.charon.boons.add","fallback":"You have been granted a Boon!","color":"#EB87FF"}
tellraw @s {"translate":"cartographer.charon.boons.remaining","fallback":"Boons Remaining: %s","color":"gold","with":[{"score":{"name":"@s","objective":"ca.boons"},"color":"green","bold":true}]}

playsound minecraft:block.bell.resonate player @s ~ ~ ~ 0.8 2