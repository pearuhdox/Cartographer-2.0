# This command is taken in with parameters:

# attribute: The name of the custom attribute <string input>

# value: Flat amount to add with this attribute call. Can be set to 0. Represented as a double.

# percent: Percent amount to add with this attribute call. Can be set to 0. Represented as a double where 1 is 100%.

# id: This is a string name of the attribute, which can be referenced for removal later.

$data modify storage cartographer_custom_attributes:calculator custom_attributes.$(attribute) append value {id:"$(id)",value:$(value),percent:$(percent)}
