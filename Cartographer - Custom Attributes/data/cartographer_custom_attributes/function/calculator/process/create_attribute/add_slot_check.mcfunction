#$say $(slot) | $(attribute)

$execute if data storage bbl:pldata sudo_root.working_data.cartographer.custom_attribute_equips.$(slot).$(attribute) run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_data {slot:"$(slot)",attribute:"$(attribute)"}