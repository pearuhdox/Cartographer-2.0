scoreboard players add @s ca.lightborn_behavior 1
execute if score @s ca.lightborn_behavior matches 2.. run scoreboard players set @s ca.lightborn_behavior 0

execute if score @s ca.lightborn_behavior matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Lightborn will no longer require sneaking to place torches."}
execute unless score @s ca.lightborn_behavior matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Lightborn will now require sneaking to place torches."}

playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.5 1
playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 2 0.5

scoreboard players set @s lightborn 0