$execute as $(target) positioned $(x) $(y) $(z) run particle dust_plume ~ ~0.2 ~ $(quarter_size) 0.1 $(quarter_size) 0.05 3 normal
$execute as $(target) positioned $(x) $(y) $(z) run particle effect ~ ~0.2 ~ $(quarter_size) 0.1 $(quarter_size) 0.05 1 normal

$execute as $(target) positioned $(x) $(y) $(z) if entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @e[type=#cartographer_core:affected_by_carto,tag=!ca.trailblazer_cdl,dx=$(size_neg_1),dy=0,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/trailblazer/node/damage with storage carto_event current[-1].parameters
$execute as $(target) positioned $(x) $(y) $(z) unless entity @s[type=player] positioned ~-$(half_size) ~ ~-$(half_size) as @a[tag=!ca.trailblazer_cdl,dx=$(size_neg_1),dy=0,dz=$(size_neg_1)] at @s run function carto_event:event/custom_ench/trailblazer/node/damage with storage carto_event current[-1].parameters

return 1