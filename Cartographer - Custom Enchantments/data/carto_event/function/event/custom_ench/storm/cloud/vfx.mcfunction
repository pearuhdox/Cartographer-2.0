#particle minecraft:dust{color:[0.020,0.890,0.659],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#particle minecraft:dust{color:[0.541,0.110,0.110],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 3 normal

#$execute rotated ~15 0 positioned ^-0.1 ^ ^ positioned ^ ^0.25 ^$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~30 0 positioned ^-0.15 ^ ^ positioned ^ ^0.75 ^$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
#$execute rotated ~45 0 positioned ^-0.2 ^ ^ positioned ^ ^1.25 ^$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~60 0 positioned ^-0.25 ^ ^ positioned ^ ^1.75 ^$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal

#$execute rotated ~15 0 positioned ^-0.1 ^ ^ positioned ^ ^0.25 ^-$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~30 0 positioned ^-0.15 ^ ^ positioned ^ ^0.75 ^-$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
#$execute rotated ~45 0 positioned ^-0.2 ^ ^ positioned ^ ^1.25 ^-$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~60 0 positioned ^-0.25 ^ ^ positioned ^ ^1.75 ^-$(half_size) run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal

#$execute rotated ~15 0 positioned ^-0.1 ^ ^ positioned ^$(half_size) ^0.5 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~30 0 positioned ^-0.15 ^ ^ positioned ^$(half_size) ^1.0 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
#$execute rotated ~45 0 positioned ^-0.2 ^ ^ positioned ^$(half_size) ^1.5 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~60 0 positioned ^-0.25 ^ ^ positioned ^$(half_size) ^2.0 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal

#$execute rotated ~15 0 positioned ^-0.1 ^ ^ positioned ^-$(half_size) ^0.5 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~30 0 positioned ^-0.15 ^ ^ positioned ^-$(half_size) ^1.0 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
#$execute rotated ~45 0 positioned ^-0.2 ^ ^ positioned ^-$(half_size) ^1.5 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal
$execute rotated ~60 0 positioned ^-0.25 ^ ^ positioned ^-$(half_size) ^2.0 ^ run particle minecraft:dust_color_transition{to_color:[0.6,0.6,0.6],from_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 0 0 0 0 1 normal

$execute as $(owner) if entity @s[type=player] positioned ^-1 ^ ^ positioned ^$(half_size) ^0.6 ^ run particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.020,0.890,0.659],scale:2.0} ~ ~ ~ 0 0 0 0 1 normal
$execute as $(owner) if entity @s[type=player] positioned ^1 ^ ^ positioned ^-$(half_size) ^1.2 ^ run particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.020,0.890,0.659],scale:2.0} ~ ~ ~ 0 0 0 0 1 normal

$execute as $(owner) unless entity @s[type=player] positioned ^-1 ^ ^ positioned ^$(half_size) ^0.6 ^ run particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.541,0.110,0.110],scale:2.0} ~ ~ ~ 0 0 0 0 1 normal
$execute as $(owner) unless entity @s[type=player] positioned ^1 ^ ^ positioned ^-$(half_size) ^1.2 ^ run particle minecraft:dust_color_transition{to_color:[1.0,1.0,1.0],from_color:[0.541,0.110,0.110],scale:2.0} ~ ~ ~ 0 0 0 0 1 normal