scoreboard players set $silence_delete ca.status_var 0
execute if entity @s[type=#bb:projectile] on origin if entity @s[tag=ca.has_custom_status_silenced] unless entity @s[type=player] run scoreboard players set $silence_delete ca.status_var 1
execute if entity @s[type=#bb:projectile] unless entity @s[type=trident] on origin if entity @s[tag=ca.has_custom_status_silenced] if entity @s[type=player] run scoreboard players set $silence_delete ca.status_var 1

execute if entity @s[type=fishing_bobber] on origin if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1

execute if entity @s[type=minecraft:evoker_fangs] on origin if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1
execute if entity @s[type=minecraft:vex] on origin if entity @s[type=evoker,tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1


execute if score $silence_delete ca.status_var matches 1.. on origin if entity @s[type=player] run playsound minecraft:block.fire.extinguish player @a[distance=..10] ~ ~ ~ 1 2
execute if score $silence_delete ca.status_var matches 1.. on origin unless entity @s[type=player] run playsound minecraft:block.fire.extinguish hostile @a[distance=..10] ~ ~ ~ 1 2

execute if score $silence_delete ca.status_var matches 1.. on origin if entity @s[type=player] at @s anchored eyes positioned ^ ^ ^1 run particle dust{color:[0.235,0.298,0.471],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 8 normal
execute if score $silence_delete ca.status_var matches 1.. on origin unless entity @s[type=player] run particle dust{color:[0.235,0.298,0.471],scale:3} ~ ~ ~ 0.2 0.2 0.2 0 6 normal

execute if score $silence_delete ca.status_var matches 1.. run kill @s