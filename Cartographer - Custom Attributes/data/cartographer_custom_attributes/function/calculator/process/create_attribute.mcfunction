$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"feet",attribute:"$(attribute)"}
$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"legs",attribute:"$(attribute)"}
$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"body",attribute:"$(attribute)"}
$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"head",attribute:"$(attribute)"}
$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"main",attribute:"$(attribute)"}
$function cartographer_custom_attributes:calculator/process/create_attribute/remove_slot {slot:"offh",attribute:"$(attribute)"}


#$execute unless score $disable_feet ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"feet",attribute:"$(attribute)"}
#$execute unless score $disable_legs ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"legs",attribute:"$(attribute)"}
#$execute unless score $disable_body ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"body",attribute:"$(attribute)"}
#$execute unless score $disable_head ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"head",attribute:"$(attribute)"}
#$execute unless score $disable_mainhand ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"main",attribute:"$(attribute)"}
$execute unless score $disable_offhand ca.attr_var matches 1.. run function cartographer_custom_attributes:calculator/process/create_attribute/add_slot_check {slot:"offh",attribute:"$(attribute)"}