
# Reset
function inv:internal/reset

# Store
data modify storage inv:main inv.all set from entity @s Inventory
data modify storage inv:main inv.equip set from entity @s equipment

data modify storage inv:main inv.equip.offhand.Slot set value -106b
data modify storage inv:main inv.equip.feet.Slot set value 100b
data modify storage inv:main inv.equip.legs.Slot set value 101b
data modify storage inv:main inv.equip.chest.Slot set value 102b
data modify storage inv:main inv.equip.head.Slot set value 103b

data modify storage inv:main inv.all append from storage inv:main inv.equip.offhand
data modify storage inv:main inv.all append from storage inv:main inv.equip.feet
data modify storage inv:main inv.all append from storage inv:main inv.equip.legs
data modify storage inv:main inv.all append from storage inv:main inv.equip.chest
data modify storage inv:main inv.all append from storage inv:main inv.equip.head
