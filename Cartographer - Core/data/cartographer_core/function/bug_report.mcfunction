tellraw @s {"color":"#FFE0A3","italic":true,"text":"Find a bug? Have a suggestion?"}
tellraw @s {"color":"#ffe0a3","italic":true,"text":"Create a bug report at this link!"}
tellraw @s {"color":"#a3ffff","underlined":true,"text":"https://github.com/pearuhdox/Cartographer-2.0/issues","clickEvent":{"action":"open_url","value":"https://github.com/pearuhdox/Cartographer-2.0/issues"}}

scoreboard players set @s bug 0
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 2
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.6 0.5
