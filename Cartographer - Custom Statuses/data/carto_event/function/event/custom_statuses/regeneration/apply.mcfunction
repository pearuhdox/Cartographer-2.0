$scoreboard players set @s ca.heal $(amount)

execute if entity @s[type=player] run function cartographer_core:helper/heal_player/apply_heal

execute unless entity @s[type=player] store result score $mob_health ca.heal run data get entity @s Health 10
execute unless entity @s[type=player] run scoreboard players operation @s ca.heal = @s ca.heal
execute unless entity @s[type=player] run scoreboard players operation @s ca.heal /= $10 ca.CONSTANT
execute unless entity @s[type=player] run scoreboard players operation @s ca.regeneration_buffer += @s ca.heal
execute unless entity @s[type=player] unless score $mob_health ca.heal matches 0 run function cartographer_core:helper/heal_mob/main

execute if score @s ca.regeneration_buffer matches 2.. unless entity @s[type=player] anchored eyes positioned ^ ^-0.75 ^ run function cartographer_core:handlers/text_popup/indicator/create {scale:1.0,text:"+❤",color:"#F997EA",buffer_name:"regeneration"}

scoreboard players set @s ca.heal 0