$execute as $(target) at @s run tag @s add ca.was_chained

$execute as $(target) at @s run damage @s $(chaining_hit_damage) $(chaining_hit_damage_type) by $(chaining_owner)

return 0