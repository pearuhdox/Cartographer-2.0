data modify storage inv:main inv.new set value []
data modify storage inv:main inv.hotbar set value []
data modify storage inv:main inv.armor set value []
data modify storage inv:main inv.offhand set value []
data modify storage inv:main inv.inventory set value []

# Prepare
data modify storage inv:main inv.new set from storage inv:main inv.all
function inv:internal/save/slot
execute store result score count Inventory run data get storage inv:main inv.new

# Sort
function inv:internal/save/sort_all

# Reset
data remove storage inv:main inv.new