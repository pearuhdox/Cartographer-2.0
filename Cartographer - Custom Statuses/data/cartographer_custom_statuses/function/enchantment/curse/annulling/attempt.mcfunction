scoreboard players operation $value ca.ench_annulling_lvl = @s ca.ench_annulling_lvl
scoreboard players operation $value ca.ench_annulling_lvl *= $5 ca.CONSTANT

scoreboard players set $value_2 ca.ench_annulling_lvl 100
scoreboard players operation $value_2 ca.ench_annulling_lvl -= $value ca.ench_annulling_lvl

scoreboard players operation $target ca.rand = $value_2 ca.ench_annulling_lvl

scoreboard players set $entropy ca.rand 0
function cartographer_core:handlers/random/roll

# Unique Case - Combat Luck helps prevent this chance - the values are reversed to allow this to happen
execute unless score $success ca.rand matches 1.. run function cartographer_custom_statuses:enchantment/curse/annulling/purge