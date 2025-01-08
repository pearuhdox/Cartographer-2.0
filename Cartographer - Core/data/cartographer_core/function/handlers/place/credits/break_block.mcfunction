execute if score $count ca.credits_menu matches 1.. run scoreboard players remove $count ca.credits_menu 1

particle minecraft:poof ~ ~0.3 ~ 0.1 0.1 0.1 0.01 4 normal
playsound minecraft:entity.zombie.attack_wooden_door block @a[distance=..16] ~ ~ ~ 0.5 1.45

execute on vehicle on passengers if entity @s[type=!interaction] run kill @s
execute on vehicle run kill @s
kill @s