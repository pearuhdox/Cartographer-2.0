$execute unless score $value ca.attr_var matches 0 run attribute @s attack_damage modifier add ca.total_damage_value $(value) add_value
$execute unless score $percent ca.attr_var matches 100 run attribute @s attack_damage modifier add ca.total_damage_percent $(percent) add_multiplied_total
