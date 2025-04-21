# This command is taken in with parameters:

# attribute: The name of the custom attribute <string input>

# value: Flat amount to add with this attribute call. Can be set to 0. Represented as a double.

# percent: Percent amount to add with this attribute call. Can be set to 0. Represented as a double where 1 is 100%.

# id: This is a string name of the attribute, which can be referenced for removal later.

execute if entity @s[type=player] run function cartographer_core:pldata/read
execute unless entity @s[type=player] run function cartographer_core:amd/read

$execute if entity @s[type=player] run data remove storage cartographer:player_data main.working_data.cartographer.custom_attributes.$(attribute)[{id:"$(id)"}]
$execute unless entity @s[type=player] run data remove storage amd:mob_data working_data.data.custom_attributes.$(attribute)[{id:"$(id)"}]

execute if entity @s[type=player] run function cartographer_core:pldata/write
execute unless entity @s[type=player] run function cartographer_core:amd/write
