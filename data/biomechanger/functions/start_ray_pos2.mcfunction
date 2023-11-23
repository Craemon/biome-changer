#Setting up the raycasting data.

tag @s add raypos2
scoreboard players set #hit raycastpos2 0
scoreboard players set #distance raycastpos2 0

#Running custom pre-raycast commands.

say Before Raycasting

#Activating the raycast. This function will call itself until it is done.

function biomechanger:ray_pos2

#Raycasting finished, removing tag from the raycaster.

tag @s remove raypos2
