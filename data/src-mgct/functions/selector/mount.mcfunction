ride @s mount @e[limit=1, sort=nearest, nbt=!{Item: {tag: {selector:1}}}]
data merge entity @s {Item: {tag: {selected:1}}, PickupDelay: 32767}


tellraw @a[distance=..5] {"text": "🛈 Selector now appears above selected entity", "color": "aqua"}
tellraw @a[distance=..5] {"text": "You must be within 5 blocks range to execute commands with the selector", "color": "yellow"}
playsound minecraft:entity.item_frame.add_item block @a[distance=..5] ~ ~ ~ 1 1.3