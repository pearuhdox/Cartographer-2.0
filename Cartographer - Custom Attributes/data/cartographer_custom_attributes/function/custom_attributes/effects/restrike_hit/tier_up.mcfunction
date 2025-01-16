scoreboard players set $tier ca.restrike_hit_var 1

scoreboard players remove $target ca.rand 100
execute if score $target ca.rand matches 1.. run function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/tier_up_rec

function cartographer_custom_attributes:custom_attributes/effects/restrike_hit/do