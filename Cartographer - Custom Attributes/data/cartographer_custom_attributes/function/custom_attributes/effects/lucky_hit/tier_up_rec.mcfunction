scoreboard players set $success ca.rand 0

scoreboard players set $entropy ca.rand 0

function cartographer_core:handlers/random/roll

execute if score $success ca.rand matches 1.. run scoreboard players operation $damage ca.lucky_hit_var += $orig_damage ca.lucky_hit_var
execute if score $success ca.rand matches 1.. run scoreboard players add $tier ca.lucky_hit_var 1

scoreboard players remove $target ca.rand 100
execute if score $target ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/tier_up_rec
