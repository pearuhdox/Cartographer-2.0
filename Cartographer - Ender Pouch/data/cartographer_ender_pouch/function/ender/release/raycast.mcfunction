execute if block ^ ^ ^1 minecraft:ender_chest positioned ^ ^ ^1 align xyz if block ~ ~1 ~ hopper positioned ~0.5 ~2 ~0.5 if data storage cartographer:ender_pouch pocketed[0] run function cartographer_ender_pouch:ender/release/recurse
execute if block ^ ^ ^1 minecraft:ender_chest positioned ^ ^ ^1 align xyz unless block ~ ~1 ~ hopper positioned ~0.5 ~1.2 ~0.5 if data storage cartographer:ender_pouch pocketed[0] run function cartographer_ender_pouch:ender/release/recurse


scoreboard players remove $raycast ca.pouch_var 1

execute if score $raycast ca.pouch_var matches 1.. positioned ^ ^ ^1 run function cartographer_ender_pouch:ender/release/raycast