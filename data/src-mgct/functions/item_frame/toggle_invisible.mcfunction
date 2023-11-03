# mark item frame with correct action
execute if data entity @s {Invisible:0b} run tag @s add src-mgct+item_frame+invisible+enable
execute if data entity @s {Invisible:1b} run tag @s add src-mgct+item_frame+invisible+disable

# modify invisible nbt tag based on enable/disable tag
execute if data entity @s {Tags: ["src-mgct+item_frame+invisible+enable"]} run data modify entity @s Invisible set value 1
execute if data entity @s {Tags: ["src-mgct+item_frame+invisible+disable"]} run data modify entity @s Invisible set value 0

# reset enable/disable tag
tag @s remove src-mgct+item_frame+invisible+enable
tag @s remove src-mgct+item_frame+invisible+disable

# feedback + deselect
tellraw @a[distance=..10] {"text": "🔧 Item frame invisibility toggled", "color": "green"}
