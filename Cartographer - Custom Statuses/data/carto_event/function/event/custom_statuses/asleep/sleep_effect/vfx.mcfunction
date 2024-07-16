execute store result score $vfx ca.asleep_var run random value 1..8

execute if score $vfx ca.asleep_var matches 1 rotated ~45 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 2 rotated ~90 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 3 rotated ~135 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 4 rotated ~180 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 5 rotated ~225 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 6 rotated ~270 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 7 rotated ~315 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force
execute if score $vfx ca.asleep_var matches 8 rotated ~360 0 positioned ^ ^ ^0.3 run particle minecraft:sculk_charge_pop ~ ~ ~ ^ ^1000000 ^ 0.0000001 0 force