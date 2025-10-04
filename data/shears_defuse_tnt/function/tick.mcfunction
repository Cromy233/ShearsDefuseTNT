# TNT CHECK
execute at @e[type=tnt] unless entity @e[type=minecraft:interaction,tag=shears_defuse_tnt,distance=..0.5] run summon minecraft:interaction ~ ~ ~ {Tags:["shears_defuse_tnt"],width:1,height:1}
# INTERACTION CHECK
execute as @e[type=minecraft:interaction,tag=shears_defuse_tnt] at @s run tp @s @n[type=tnt,distance=..0.5]
execute as @e[type=minecraft:interaction,tag=shears_defuse_tnt] at @s unless entity @n[type=tnt,distance=..0.5] run kill
# DEFUSE CHECK
execute as @e[type=minecraft:interaction,tag=shears_defuse_tnt,nbt={attack:{}}] on attacker if items entity @s weapon.mainhand minecraft:shears as @e[type=minecraft:interaction,tag=shears_defuse_tnt,nbt={attack:{}}] at @s run function shears_defuse_tnt:defuse
execute as @e[type=minecraft:interaction,tag=shears_defuse_tnt,nbt={attack:{}}] run data remove entity @s attack