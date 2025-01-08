scoreboard players add @s ca.no_charging 1
execute if score @s ca.no_charging matches 2.. run scoreboard players set @s ca.no_charging 0

execute if score @s ca.no_charging matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Charging Indicators will no longer be displayed."}
execute unless score @s ca.no_charging matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Charging Indicators will now be displayed."}

playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.5 1
playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 2 0.5

scoreboard players set @s toggle_charging 0