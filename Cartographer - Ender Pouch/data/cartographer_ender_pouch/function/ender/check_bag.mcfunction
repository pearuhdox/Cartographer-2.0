#execute store result score $test_ender ca.pouch_var run clear @s bundle{EnderPouch:1b} 0
#execute unless score $test_ender ca.pouch_var matches 1.. run function pouches:give/ender

#execute unless score $test_ender ca.pouch_var matches 1.. run playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 1 2
#execute unless score $test_ender ca.pouch_var matches 1.. run tellraw @s {"text":"You have been given an Ender Pouch! (You do not currently have one.)","color":"green","italic":false}

scoreboard players set $test_ender ca.pouch_var 0