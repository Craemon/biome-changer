#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #biomechanger:blocks run function biomechanger:hit_block_pos1
scoreboard players add #distance raycastpos1 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit raycastpos1 matches 0 if score #distance raycastpos1 matches 51.. run function biomechanger:failed_pos1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit raycastpos1 matches 0 if score #distance raycastpos1 matches ..50 positioned ^ ^ ^0.1 run function biomechanger:ray_pos1
