execute if score @s ca.hardened_type matches 1 if entity @s[type=player] run playsound minecraft:item.shield.block player @s ~ ~ ~ 0.35 1.5
execute if score @s ca.hardened_type matches 1 unless entity @s[type=player] run playsound minecraft:item.shield.block hostile @a[distance=..12] ~ ~ ~ 0.75 1.5

execute unless entity @s[type=player] if score @s ca.hardened_type matches 1 anchored eyes positioned ^ ^ ^ run function cartographer_core:handlers/text_popup/create {text:"[{\"color\":\"#A3FFB3\",\"italic\":false,\"translate\":\"cartographer.popup.enchant_resist\",\"fallback\":\"Enchant Resist\"},{\"text\":\"\n\"},{\"color\":\"#2ce0cc\",\"italic\":false,\"translate\":\"enchantment.cartographer.hardened\",\"fallback\":\"Hardened\"}]",popup_duration:25,teleport_duration:2,scale:0.5,background:16777215,text_opacity:150,teleport_position:"~ ~0.35 ~"}

scoreboard players set @s ca.hardened_type 1