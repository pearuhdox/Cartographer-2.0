#$say summon $(projectile) ~ ~ ~ {Motion:[$(x),$(y),$(z)],Tags:["ca.barrage_created"]}

#$say $(yaw)
#$say $(pitch)

$summon $(projectile) ~ ~ ~ {Rotation:[$(yaw)F,$(pitch)F],Motion:[$(x),$(y),$(z)],Tags:["ca.barrage_created"]}

execute as @e[tag=ca.barrage_created,limit=1,sort=nearest] at @s run function carto_event:event/custom_ench/barrage/create_branch with storage carto_event current[-1].parameters