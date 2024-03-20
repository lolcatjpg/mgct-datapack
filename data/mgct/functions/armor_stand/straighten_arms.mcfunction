function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] run data merge entity @s {Pose:{LeftArm:[0f, 0f, 0f], RightArm:[0f, 0f, 0f]}}

# feedback if wrong entity
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run tellraw @a[distance=..5] {"text": "⚠ Selected entity is not an armor stand", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
# function src-mgct:selector/kill
