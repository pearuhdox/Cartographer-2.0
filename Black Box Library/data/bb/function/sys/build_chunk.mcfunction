
#Fill chunk
fill 4206848 -1 4206879 4206863 -64 4206864 bedrock
fill 4206848 0 4206879 4206863 127 4206864 bedrock
fill 4206848 128 4206879 4206863 255 4206864 bedrock
fill 4206863 256 4206864 4206848 319 4206879 bedrock

#Fill bocks
fill 4206863 1 4206879 4206848 10 4206864 barrier
fill 4206849 1 4206878 4206862 10 4206865 air

#Magic block
setblock 4206849 1 4206865 diamond_block

#Void hole
fill 4206848 -64 4206864 4206863 -49 4206879 air
#Compare air
fill 4206848 -47 4206864 4206863 -31 4206879 air

#Portal
fill 4206863 319 4206864 4206848 319 4206879 air
setblock 4206856 319 4206871 nether_portal