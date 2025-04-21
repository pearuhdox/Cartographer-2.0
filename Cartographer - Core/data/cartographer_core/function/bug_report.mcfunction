execute if entity @s[tag=degenerate] store result score $silly ca.var run random value 1..14

execute if entity @s[tag=degenerate] if score $silly ca.var matches 1 run tellraw @s {"color":"red","italic":true,"text":"Trigger a bug? Okay then!"}
execute if entity @s[tag=degenerate] if score $silly ca.var matches 2 run tellraw @s {"color":"red","italic":true,"text":"Mine has bugs..."}
execute if entity @s[tag=degenerate] if score $silly ca.var matches 3 run tellraw @s {"color":"red","italic":true,"text":"Causing problems on purpose."}
execute if entity @s[tag=degenerate] if score $silly ca.var matches 4 if entity @s[name=Matoreichon] run tellraw @s {"color":"red","italic":true,"text":"Hi honey, how are you, do you like these bugs? <3"}

execute if entity @s[tag=degenerate] if score $silly ca.var matches 1..3 run summon silverfish ~ ~ ~ {NoAI:1b}
execute if entity @s[tag=degenerate] if score $silly ca.var matches 4 if entity @s[name=Matoreichon] run summon silverfish ~ ~ ~ {NoAI:1b}

tellraw @s {"color":"#FFE0A3","italic":true,"text":"Find a bug? Have a suggestion?"}
tellraw @s {"color":"#ffe0a3","italic":true,"text":"Create a bug report at this link!"}
tellraw @s {"color":"#a3ffff","underlined":true,"text":"https://github.com/pearuhdox/Cartographer-2.0/issues","click_event":{"action":"open_url","url":"https://github.com/pearuhdox/Cartographer-2.0/issues"}}

scoreboard players set @s bug 0

execute if entity @s[tag=degenerate] if entity @s[tag=degenerate] store result score $silly ca.var run random value 1..3
execute if entity @s[tag=degenerate] unless score $silly ca.var matches 3.. run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=degenerate] unless score $silly ca.var matches 3.. run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=degenerate] unless score $silly ca.var matches 3.. run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 0.5

execute if entity @s[tag=degenerate] if score $silly ca.var matches 3.. run playsound minecraft:entity.silverfish.ambient master @s ~ ~ ~ 0.5 2
execute if entity @s[tag=degenerate] if score $silly ca.var matches 3.. run playsound minecraft:entity.silverfish.ambient master @s ~ ~ ~ 0.5 1
execute if entity @s[tag=degenerate] if score $silly ca.var matches 3.. run playsound minecraft:entity.silverfish.ambient master @s ~ ~ ~ 0.5 0.5

execute unless entity @s[tag=degenerate] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2
execute unless entity @s[tag=degenerate] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 1
execute unless entity @s[tag=degenerate] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 0.5
