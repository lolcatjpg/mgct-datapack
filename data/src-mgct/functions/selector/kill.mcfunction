execute as @e[tag=src-mgct+selected, distance=..5] run data modify entity @s Glowing set value 0
execute as @e[tag=src-mgct+selected, distance=..5] run tag @s remove src-mgct+selected
execute as @e[type=item, nbt={Item: {tag: {selected:1}}}, distance=..5] run kill @s
