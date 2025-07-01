particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.3 0.3 0.3 0.03 8 normal
playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 0.8 2
particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 0.5 5 normal

execute on passengers run ride @s dismount
ride @s dismount
tp @s ~ -500 ~
