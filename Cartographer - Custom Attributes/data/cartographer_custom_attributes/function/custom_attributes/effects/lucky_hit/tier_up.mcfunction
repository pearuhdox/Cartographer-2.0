scoreboard players operation $orig_damage ca.lucky_hit_var = $damage ca.lucky_hit_var
scoreboard players set $tier ca.lucky_hit_var 1

scoreboard players remove $target ca.rand 100
execute if score $target ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/tier_up_rec

function cartographer_custom_attributes:custom_attributes/effects/lucky_hit/do