#Mark the ray as having found a block.

scoreboard players set #hit raycastpos1 1

#Running custom commands since the block was found.

tellraw @s "Position 1 set!"
summon minecraft:armor_stand ~ ~ ~ {Tags: ["pos1"]}
data get entity @e[type=minecraft:armor_stand , tag=pos1, limit= 1] Pos
execute store result score 0 pos1x run data get entity @e[type=armor_stand,tag=pos1,limit=1,sort=nearest] Pos[0]
execute store result score 0 pos1y run data get entity @e[type=armor_stand,tag=pos1,limit=1,sort=nearest] Pos[1]
execute store result score 0 pos1z run data get entity @e[type=armor_stand,tag=pos1,limit=1,sort=nearest] Pos[2]