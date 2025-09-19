execute if block ^ ^ ^1 minecraft:ender_chest positioned ^ ^ ^1 align xyz if block ~ ~1 ~ hopper positioned ~0.5 ~2 ~0.5 run function cartographer_ender_pouch:ender/release/choose_mode
execute if block ^ ^ ^1 minecraft:ender_chest positioned ^ ^ ^1 align xyz unless block ~ ~1 ~ hopper positioned ~0.5 ~1.2 ~0.5 run function cartographer_ender_pouch:ender/release/choose_mode

scoreboard players remove $raycast ca.pouch_var 1

execute if score $raycast ca.pouch_var matches 1.. positioned ^ ^ ^1 run function cartographer_ender_pouch:ender/release/raycast with storage cartographer:ender_pouch