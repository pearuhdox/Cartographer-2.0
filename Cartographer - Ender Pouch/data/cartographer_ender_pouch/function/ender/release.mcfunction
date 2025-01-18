scoreboard players set $raycast ca.pouch_var 4

scoreboard players set $did_ender_release ca.pouch_var 0

execute anchored eyes run function cartographer_ender_pouch:ender/release/raycast

execute if score $did_ender_release ca.pouch_var matches 1.. run playsound minecraft:block.end_portal.spawn player @a[distance=..12] ~ ~ ~ 0.25 2
execute if score $did_ender_release ca.pouch_var matches 1.. run tellraw @s {"text":"Ender Pouch storage has been released!","color":"green","italic":false}