$scoreboard players set @s ca.heal $(amount)

execute if entity @s[type=player] run function cartographer_core:helper/heal_player/apply_heal

execute unless entity @s[type=player] store result score $mob_health ca.heal run data get entity @s Health 10
execute unless entity @s[type=player] run scoreboard players operation @s bbl.heal_queue = @s ca.heal
execute unless entity @s[type=player] run scoreboard players operation @s bbl.heal_queue /= $10 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation @s ca.regeneration_buffer += @s bbl.heal_queue
execute unless entity @s[type=player] unless score $mob_health ca.heal matches 0 run function bb:call/hpm/mob/heal

execute if score @s ca.regeneration_buffer matches 2.. unless entity @s[type=player] anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:1.0,text:"+❤",color:"#F997EA",buffer_name:"regeneration"}

#bb:call/hpm/mob/heal
scoreboard players set @s ca.heal 0