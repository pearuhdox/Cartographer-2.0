execute store result score $value ca.rand run random value 1..100

scoreboard players operation $value ca.rand -= $entropy ca.rand

execute if score $value ca.rand <= $target ca.rand run scoreboard players set $success ca.rand 1

execute unless score $success ca.rand matches 1.. if score $advantage ca.rand matches 1.. run function cartographer_core:handlers/random/func/rec
execute if score $success ca.rand matches 1.. if score $disadvantage ca.rand matches 1.. run function cartographer_core:handlers/random/func/rec