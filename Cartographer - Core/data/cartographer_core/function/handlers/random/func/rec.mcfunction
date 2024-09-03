execute if score $disadvantage ca.rand matches 1.. run scoreboard players set $success ca.rand 0

execute store result score $value ca.rand run random value 1..100

scoreboard players operation $value ca.rand -= $entropy ca.rand

execute if score $value ca.rand <= $target ca.rand run scoreboard players set $success ca.rand 1

execute as @s at @s if score $advantage ca.rand matches 1.. if score $success ca.rand matches 1.. anchored eyes positioned ^ ^-0.25 ^ run function cartographer_core:handlers/random/func/popup_adv

scoreboard players remove $advantage ca.rand 1
scoreboard players remove $disadvantage ca.rand 1

execute as @s at @s if score $disadvantage ca.rand matches 0.. if score $success ca.rand matches 0 anchored eyes positioned ^ ^-0.25 ^ run function cartographer_core:handlers/random/func/popup_dis

execute unless score $success ca.rand matches 1.. if score $advantage ca.rand matches 1.. run function cartographer_core:handlers/random/func/rec
execute if score $success ca.rand matches 1.. if score $disadvantage ca.rand matches 1.. run function cartographer_core:handlers/random/func/rec