scoreboard players add @s ca.disable_other_skins 1
execute if score @s ca.disable_other_skins matches 2.. run scoreboard players set @s ca.disable_other_skins 0

execute if score @s ca.disable_other_skins matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Non-player based supporter skins are disabled for your effects."}
execute unless score @s ca.disable_other_skins matches 1.. run tellraw @s {"color":"yellow","italic":true,"text":"Non-player based supporter skins are enabled for your effects."}

playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.5 1
playsound minecraft:item.flintandsteel.use player @s ~ ~ ~ 2 0.5

scoreboard players set @s disable_other_skins 0