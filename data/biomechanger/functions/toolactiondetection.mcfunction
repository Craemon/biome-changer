#setup
execute as @a[tag=editor,tag=! hasbiomewand] run summon interaction ~ ~ ~ {width:2f,height:3f,response:true ,Tags:["biomewand"]}
execute as @a[tag=editor,tag=! hasbiomewand] run tag @s add hasbiomewand
execute as @a[tag=hasbiomewand] at @s run tp @e[type=interaction, tag=biomewand] @s 

#checks for leftclicks (pos1)
execute as @e[type=minecraft:interaction,nbt={attack:{}},tag=biomewand] at @s run execute as Craemon at @s anchored eyes positioned ^ ^ ^ anchored feet run function biomechanger:start_ray_pos1
execute as @e[type=minecraft:interaction,nbt={attack:{}},tag=biomewand] run data remove entity @s attack
#checks for rightclicks (pos2)
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=biomewand] at @s run execute as Craemon at @s anchored eyes positioned ^ ^ ^ anchored feet run function 
execute as @e[type=minecraft:interaction,nbt={interaction:{}},tag=biomewand] run data remove entity @s interaction