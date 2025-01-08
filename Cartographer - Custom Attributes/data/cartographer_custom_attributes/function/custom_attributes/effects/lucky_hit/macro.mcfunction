#damage @s 0.001 cartographer_custom_attributes:attribute_damage_bypass
$damage @s $(lucky_hit_damage) cartographer_custom_attributes:attribute_damage

execute on attacker if entity @s[type=player] run scoreboard players set $entity_type ca.lucky_hit_var 1
execute on attacker unless entity @s[type=player] run scoreboard players set $entity_type ca.lucky_hit_var 2


execute if score $entity_type ca.lucky_hit_var matches 1 run playsound minecraft:block.basalt.break player @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 1 run playsound minecraft:block.basalt.break player @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 1 run playsound minecraft:entity.player.attack.crit player @a[distance=..16] ~ ~ ~ 1 1.5

execute if score $entity_type ca.lucky_hit_var matches 2 run playsound minecraft:block.basalt.break hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 2 run playsound minecraft:block.basalt.break hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score $entity_type ca.lucky_hit_var matches 2 run playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 1 1.5

execute unless entity @s[type=player] anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:sneeze ~ ~ ~ 0.15 0.3 0.15 0.01 3 normal
execute anchored eyes positioned ^ ^-0.5 ^ run particle minecraft:crit ~ ~ ~ 0.15 0.3 0.15 0.2 10 normal