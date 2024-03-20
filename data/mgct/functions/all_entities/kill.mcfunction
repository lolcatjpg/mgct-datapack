function src-mgct:selector/check_range

execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=!#mgct:selector_denylist] run kill @s
#function src-mgct:selector/kill

# feedback if wrong entity
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=#mgct:selector_denylist] run tellraw @a[distance=..5] {"text": "⚠ You cannot use mgct with selected entity", "color": "red"}
execute as @e[tag=src-mgct+selected, distance=..5] if entity @s[type=#mgct:selector_denylist] run playsound minecraft:entity.item_frame.break block @a[distance=..5] ~ ~ ~ 1 1