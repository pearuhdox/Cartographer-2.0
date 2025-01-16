#damage @s 0.001 cartographer_custom_attributes:attribute_damage_bypass
$damage @s $(lucky_hit_damage) cartographer_custom_attributes:attribute_damage

execute on attacker if entity @s[type=player] run scoreboard players set $entity_type ca.lucky_hit_var 1
execute on attacker unless entity @s[type=player] run scoreboard players set $entity_type ca.lucky_hit_var 2


execute if score $entity_type ca.lucky_hit_var matches 1 run playsound minecraft:block.basalt.break player @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 1 run playsound minecraft:block.basalt.break player @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 1 if score $tier ca.lucky_hit_var matches 1 run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 1 if score $tier ca.lucky_hit_var matches 2 run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1
execute if score $entity_type ca.lucky_hit_var matches 1 if score $tier ca.lucky_hit_var matches 3.. run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 0.5

execute if score $entity_type ca.lucky_hit_var matches 2 run playsound minecraft:block.basalt.break hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 2 run playsound minecraft:block.basalt.break hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 2 if score $tier ca.lucky_hit_var matches 1 run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 2 if score $tier ca.lucky_hit_var matches 2 run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 1
execute if score $entity_type ca.lucky_hit_var matches 2 if score $tier ca.lucky_hit_var matches 3.. run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score $tier ca.lucky_hit_var matches 1 unless entity @s[type=player] anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:dust{color:[1.000,0.957,0.349],scale:1.25} ~ ~ ~ 0.15 0.3 0.15 0.01 12 normal
execute if score $tier ca.lucky_hit_var matches 2 unless entity @s[type=player] anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:dust{color:[1.000,0.631,0.310],scale:1.25} ~ ~ ~ 0.15 0.3 0.15 0.01 12 normal
execute if score $tier ca.lucky_hit_var matches 3.. unless entity @s[type=player] anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:dust{color:[1.000,0.212,0.212],scale:1.25} ~ ~ ~ 0.15 0.3 0.15 0.01 12 normal

execute anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:crit ~ ~ ~ 0.15 0.3 0.15 0.2 10 normal