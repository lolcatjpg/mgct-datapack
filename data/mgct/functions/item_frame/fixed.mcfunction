function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=#mgct:group/item_frame] run function src-mgct:item_frame/toggle_fixed

# feedback if wrong entity
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!#mgct:group/item_frame] run tellraw @a[distance=..5] {"text": "⚠ Selected entity is not an item frame", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!#mgct:group/item_frame] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
function src-mgct:selector/kill
