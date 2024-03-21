function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!#mgct:selector_denylist] run function src-mgct:all_entities/toggle_custom_name_visible

# feedback if wrong entity (should never happen bc you cant select denylisted entities)
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=#mgct:selector_denylist] run tellraw @a[distance=..5] {"text": "⚠ You cannot use mgct with selected entity", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=#mgct:selector_denylist] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1
# function src-mgct:selector/kill
