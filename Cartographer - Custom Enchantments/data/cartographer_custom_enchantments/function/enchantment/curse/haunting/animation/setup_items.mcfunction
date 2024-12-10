data modify storage cartographer_custom_enchantments:haunting_setup items set value {}

data modify storage cartographer_custom_enchantments:haunting_setup items.main set from entity @s item
execute on passengers if entity @s[tag=ca.haunting_display_offh] run data modify storage cartographer_custom_enchantments:haunting_setup items.offh set from entity @s item
execute on passengers if entity @s[tag=ca.haunting_display_feet] run data modify storage cartographer_custom_enchantments:haunting_setup items.feet set from entity @s item
execute on passengers if entity @s[tag=ca.haunting_display_legs] run data modify storage cartographer_custom_enchantments:haunting_setup items.legs set from entity @s item
execute on passengers if entity @s[tag=ca.haunting_display_body] run data modify storage cartographer_custom_enchantments:haunting_setup items.body set from entity @s item
execute on passengers if entity @s[tag=ca.haunting_display_head] run data modify storage cartographer_custom_enchantments:haunting_setup items.head set from entity @s item