#Run a function if a block was successfully detected.

execute unless block ~ ~ ~ #biomechanger:blocks run function biomechanger:hit_block_pos2
scoreboard players add #distance raycastpos2 1

#If the raycast failed, run a function with the custom commands.

execute if score #hit raycastpos2 matches 0 if score #distance raycastpos2 matches 51.. run function biomechanger:failed_pos2

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit raycastpos2 matches 0 if score #distance raycastpos2 matches ..50 positioned ^ ^ ^0.1 run function biomechanger:ray_pos2
