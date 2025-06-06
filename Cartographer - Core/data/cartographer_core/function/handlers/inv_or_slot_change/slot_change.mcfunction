scoreboard players operation $old ca.selected_slot = @s ca.selected_slot
execute store result score @s ca.selected_slot run data get entity @s SelectedItemSlot

execute unless score @s ca.selected_slot = $old ca.selected_slot run function cartographer_core:slot_changed
