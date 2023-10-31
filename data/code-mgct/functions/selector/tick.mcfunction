# mount selector
execute as @e[type=minecraft:item, nbt={Item: {tag: {selected:0}}}] at @s if entity @e[distance=..0.7, limit=1, type=!item, type=!player] run function code-mgct:selector/mount