kill @e[type=tnt,distance=..0.5,sort=nearest,limit=1]
summon minecraft:item ~ ~0.6 ~ {Item:{id:"minecraft:tnt"},PickupDelay:10s,Motion:[0.0f,0.2f,0.0f]}
playsound minecraft:entity.generic.extinguish_fire neutral @a ~ ~ ~