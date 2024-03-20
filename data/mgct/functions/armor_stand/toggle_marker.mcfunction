function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] run function src-mgct:armor_stand/toggle_marker

# feedback if wrong entity
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run tellraw @a[distance=..5] {"text": "⚠ Selected entity is not an armour stand", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
# function src-mgct:selector/kill
