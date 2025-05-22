scoreboard players set @s ca.heal 100

execute if score @s ca.attr_life_drain_amount_value matches -1999999.. run scoreboard players operation @s ca.heal += @s ca.attr_life_drain_amount_value

execute if score @s ca.attr_life_drain_amount_percent matches -1999999.. run scoreboard players operation @s ca.heal *= @s ca.attr_life_drain_amount_percent
execute if score @s ca.attr_life_drain_amount_percent matches -1999999.. run scoreboard players operation @s ca.heal /= $100 ca.CONSTANT

scoreboard players operation @s ca.heal /= $10 ca.CONSTANT

scoreboard players operation $amount ca.life_drain_buffer = @s ca.heal
scoreboard players operation $amount ca.life_drain_buffer /= $10 ca.CONSTANT
scoreboard players operation @s ca.life_drain_buffer += $amount ca.life_drain_buffer

execute if entity @s[type=player] run function cartographer_core:helper/heal_player/apply_heal

execute unless entity @s[type=player] run scoreboard players operation @s ca.heal /= $10 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation @s bbl.heal_queue = @s ca.heal
execute unless entity @s[type=player] run function bb:call/hpm/mob/heal


execute if entity @s[type=player] run playsound minecraft:entity.witch.drink player @a[distance=..16] ~ ~ ~ 0.5 1.5
execute unless entity @s[type=player] run playsound minecraft:entity.witch.drink hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

#execute if entity @s[type=player] if score @s ca.life_drain_buffer matches 2.. anchored eyes rotated ~ 0 positioned ^ ^-0.95 ^0.1 run function cartographer_core:handlers/text_popup/indicator/create {scale:1.25,text:"+❤",color:"#c92859",buffer_name:"life_drain"}
execute unless entity @s[type=player] if score @s ca.life_drain_buffer matches 2.. anchored eyes positioned ^ ^-0.75 ^-0.5 run function cartographer_core:handlers/text_popup/indicator/create {scale:1.0,text:"+❤",color:"#c92859",buffer_name:"life_drain"}

scoreboard players set @s ca.life_drain_entropy 0