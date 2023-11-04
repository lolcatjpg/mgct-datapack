# mount selector
execute as @e[type=item, nbt={Item: {tag: {selected:0}}}] at @s if entity @e[distance=..0.7, limit=1, type=!item, type=!player] run function src-mgct:selector/tick/mount

# deselect when no player in range
execute as @e[type=item, nbt={Item: {tag: {selected:1}}}] at @s unless entity @p[distance=..20] run function src-mgct:selector/tick/out_of_range_deselect