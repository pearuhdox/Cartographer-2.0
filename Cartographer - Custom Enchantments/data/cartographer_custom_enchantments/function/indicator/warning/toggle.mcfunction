scoreboard players add @s ca.no_warning 1
execute if score @s ca.no_warning matches 2.. run scoreboard players set @s ca.no_warning 0

execute if score @s ca.no_warning matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Attack Indicator warnings will no longer be displayed."}
execute unless score @s ca.no_warning matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Attack Indicator warnings will now be displayed."}

playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.5 1
playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 2 0.5

scoreboard players set @s toggle_warning 0