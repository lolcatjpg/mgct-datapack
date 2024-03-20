function src-mgct:selector/check_range

#recycling item frame function bc the code is exactly the same
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=minecraft:armor_stand] run function src-mgct:item_frame/toggle_invisible

# feedback if wrong entity
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run tellraw @a[distance=..5] {"text": "⚠ Selected entity is not an armour stand", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!minecraft:armor_stand] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
# function src-mgct:selector/kill
