# mount selector
execute as @e[type=item, nbt={Item: {tag: {selected:0}}}] at @s if entity @e[distance=..0.7, limit=1, type=!#mgct:selector_denylist] run function src-mgct:selector/tick/mount

# deselect when no player in range
execute as @e[type=item, nbt={Item: {tag: {selected:1}}}] at @s unless entity @p[distance=..20] run function src-mgct:selector/tick/player_out_of_range_deselect

# remove src-mgct+selected tag when no selectors are in 20 blocks range (as safety feature)
execute as @e[tag=src-mgct+selected] at @s unless entity @e[type=item, nbt={Item: {tag: {selected: 1}}}, distance=..20] run function src-mgct:selector/tick/deselect-no-selector
