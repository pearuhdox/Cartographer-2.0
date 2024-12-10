execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/read
execute unless entity @s[tag=ca.suppress_inv_update] run data modify storage bbl:pldata sudo_root.working_data.cartographer.custom_attribute_equips set value {}
execute unless entity @s[tag=ca.suppress_inv_update] run function bb:lib/pldata/write