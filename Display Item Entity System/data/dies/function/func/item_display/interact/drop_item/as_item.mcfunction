
execute if score $gamerule.global.enter_inventory dies.master matches 1 run tp @s @p[tag=!dies.no_tp,advancements={dies:interact/left=true}]

tag @a remove dies.no_tp

function #minecraft:dies/intercept_item

tag @s remove dies.new_item
