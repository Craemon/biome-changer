#checks for the wand and limits biome editing to one player at a time
execute as @a if entity @s[nbt= {SelectedItem:{id:"minecraft:debug_stick",Count:1b}}] if score 0 biomeeditor matches 0 run tag @s add editor
execute as @a[tag= editor] run scoreboard players set 0 biomeeditor 1
execute as @a[tag=editor,nbt=! {SelectedItem:{id:"minecraft:debug_stick",Count:1b}}] run scoreboard players set 0 biomeeditor 0
execute as @a[tag=editor,nbt=! {SelectedItem:{id:"minecraft:debug_stick",Count:1b}}] run tag @s remove editor
execute as @a[tag=! editor, tag= hasbiomewand] run kill @e[type= interaction, tag=biomewand]
execute as @a[tag=! editor, tag= hasbiomewand] run tag @s remove hasbiomewand

#tick forward to tool action detection
execute as @a[tag=editor] run function biomechanger:toolactiondetection
