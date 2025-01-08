scoreboard players set $break_credits_block ca.credits_menu 0
execute on attacker if predicate cartographer_core:player/sneaking if entity @s[gamemode=creative] run scoreboard players set $break_credits_block ca.credits_menu 1

execute if score $break_credits_block ca.credits_menu matches 1.. run function cartographer_core:handlers/place/credits/break_block

execute on attacker if predicate cartographer_core:player/sneaking unless entity @s[gamemode=creative] run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.7 1
execute on attacker if predicate cartographer_core:player/sneaking unless entity @s[gamemode=creative] run trigger ca.credits_menu set 4

execute on attacker unless predicate cartographer_core:player/sneaking run playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 0.7 1
execute on attacker unless predicate cartographer_core:player/sneaking run trigger ca.credits_menu set 4
