#Setting up the raycasting data.

tag @s add raypos1
scoreboard players set #hit raycastpos1 0
scoreboard players set #distance raycastpos1 0

#Running custom pre-raycast commands.

say Before Raycasting

#Activating the raycast. This function will call itself until it is done.

function biomechanger:ray_pos1

#Raycasting finished, removing tag from the raycaster.

tag @s remove raypos1
