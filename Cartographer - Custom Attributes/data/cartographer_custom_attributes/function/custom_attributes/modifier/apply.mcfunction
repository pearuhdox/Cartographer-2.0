# This command is taken in with parameters:

# attribute: The name of the custom attribute <string input>

# value: Flat amount to add with this attribute call. Can be set to 0. Represented as a double.

# percent: Percent amount to add with this attribute call. Can be set to 0. Represented as a double where 1 is 100%.

# id: This is a string name of the attribute, which can be referenced for removal later.


execute if entity @s[type=player] run function bb:lib/pldata/read


$execute if entity @s[type=player] run data modify storage bbl:pldata sudo_root.working_data.cartographer.custom_attributes.$(attribute) append value {id:"$(id)",value:$(value),percent:$(percent)}
$execute unless entity @s[type=player] run data modify storage amd:mob_data working_data.data.custom_attributes.$(attribute) append value {id:"$(id)",value:$(value),percent:$(percent)}

execute if entity @s[type=player] run function bb:lib/pldata/write
execute unless entity @s[type=player] run function cartographer_core:amd/write