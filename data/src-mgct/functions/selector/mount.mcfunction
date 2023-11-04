# make selected entities glowing and add tag
execute as @e[limit=1, sort=nearest, nbt=!{Item: {tag: {selector:1}}}] run tag @s add src-mgct+selected
execute as @e[limit=1, sort=nearest, nbt=!{Item: {tag: {selector:1}}}] run data modify entity @s Glowing set value 1

# ride selected entity and make unpickuppable and glowing
ride @s mount @e[limit=1, sort=nearest, nbt=!{Item: {tag: {selector:1}}}]
data merge entity @s {Item: {tag: {selected:1}}, PickupDelay: 32767, Glowing: 1}


# feedback
tellraw @a[distance=..5] {"text": "🛈 Entity selected", "color": "aqua"}
tellraw @a[distance=..5] {"text": "You must be within 5 blocks range to execute commands on the selected entity", "color": "yellow"}
playsound minecraft:entity.item_frame.add_item block @a[distance=..5] ~ ~ ~ 1 1.3