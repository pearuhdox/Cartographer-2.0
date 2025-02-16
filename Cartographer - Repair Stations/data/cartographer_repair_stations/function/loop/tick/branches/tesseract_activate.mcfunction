tellraw @p[distance=..7] {"translate":"cartographer.repair_tesseract.activate.1","fallback":"As you approach the altar, the construct on top glows with energy.","color":"#E24FFF","italic":false}
tellraw @p[distance=..7] {"translate":"cartographer.repair_tesseract.activate.2","fallback":"Your destroyed items will now be saved inside the Repair Tesseract!","color":"aqua","italic":false}
playsound minecraft:block.respawn_anchor.set_spawn block @p[distance=..7] ~ ~ ~ 1 1.5
scoreboard players set @p[distance=..7] ca.tesseract 1
