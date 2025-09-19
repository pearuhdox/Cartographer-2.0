scoreboard players set $raycast ca.pouch_var 4

scoreboard players set $did_ender_release ca.pouch_var 0

data modify storage cartographer:ender_pouch player set value "-"
data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:ender_pouch player set from storage gu:main out

execute at @s anchored eyes positioned ^ ^ ^ run function cartographer_ender_pouch:ender/release/check_pocket with storage cartographer:ender_pouch

execute if score $did_ender_release ca.pouch_var matches 1.. run playsound minecraft:block.ender_chest.close block @a[distance=..12] ~ ~ ~ 1 0.8
execute if score $did_ender_release ca.pouch_var matches 1.. run tellraw @s {"translate":"cartographer.ender_pouch.release","fallback":"All Ender Pouch storage has been released!","color":"green","italic":false}