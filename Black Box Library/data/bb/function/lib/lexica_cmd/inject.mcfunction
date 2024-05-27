
execute if score $bbl.config.lexica_inject bbl.storage matches 0 run data modify block 4206900 5 4206900 Items[0].components.minecraft:custom_model_data set value 1
execute if score $bbl.config.lexica_inject bbl.storage matches 1 run data modify block 4206900 5 4206900 Items[0].components.minecraft:custom_model_data set value 2
execute if score $bbl.config.lexica_inject bbl.storage matches 1 run data remove block 4206900 5 4206900 Items[0].components.minecraft:enchantments
