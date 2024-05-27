scoreboard players set $silence_delete ca.status_var 0
execute if entity @s[type=#bb:projectile] on origin if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1
execute if entity @s[type=minecraft:evoker_fangs] on origin if entity @s[tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1
execute if entity @s[type=minecraft:vex] on origin if entity @s[type=evoker,tag=ca.has_custom_status_silenced] run scoreboard players set $silence_delete ca.status_var 1


execute if score $silence_delete ca.status_var matches 1.. run playsound minecraft:block.fire.extinguish hostile @a[distance=..10] ~ ~ ~ 2 2
execute if score $silence_delete ca.status_var matches 1.. run particle dust{color:[0.235,0.298,0.471],scale:3} ~ ~ ~ 0.2 0.2 0.2 0 6 normal

execute if score $silence_delete ca.status_var matches 1.. run kill @s