effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:slowness
effect clear @s minecraft:weakness
effect clear @s minecraft:levitation


attribute @s minecraft:attack_damage modifier remove ca.siphon_strength
attribute @s minecraft:movement_speed modifier remove ca.siphon_speed

attribute @s minecraft:attack_damage modifier remove ca.weakness
attribute @s minecraft:movement_speed modifier remove ca.slowness

attribute @s minecraft:follow_range modifier remove ca.confused_follow_range_force_off

attribute @s minecraft:movement_speed modifier remove ca.confused_speed
attribute @s minecraft:knockback_resistance modifier remove ca.confused_kbr
attribute @s minecraft:attack_knockback modifier remove ca.confused_kb
attribute @s minecraft:attack_damage modifier remove ca.confused_atk

attribute @s minecraft:follow_range modifier remove ca.blindness

attribute @s minecraft:step_height modifier remove ca.grounded
attribute @s minecraft:gravity modifier remove ca.grounded
attribute @s minecraft:jump_strength modifier remove ca.grounded

attribute @s minecraft:follow_range modifier remove ca.asleep_follow_range
attribute @s minecraft:movement_speed modifier remove ca.asleep_speed
attribute @s minecraft:attack_damage modifier remove ca.asleep_damage

attribute @s minecraft:follow_range modifier remove ca.stunned_follow_range
attribute @s minecraft:movement_speed modifier remove ca.stunned_speed
attribute @s minecraft:attack_damage modifier remove ca.stunned_damage

attribute @s minecraft:movement_speed modifier remove ca.dazed_speed
attribute @s minecraft:attack_damage modifier remove ca.dazed_damage
