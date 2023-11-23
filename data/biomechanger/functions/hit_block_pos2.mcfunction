#Mark the ray as having found a block.

scoreboard players set #hit raycastpos2 1

#Running custom commands since the block was found.

tellraw @s "Position 2 set!"
summon minecraft:armor_stand ~ ~ ~ {Tags: ["pos2"]}
data get entity @e[type=minecraft:armor_stand , tag=pos2, limit= 1] Pos
execute store result score 0 pos2x run data get entity @e[type=armor_stand,tag=pos2,limit=1,sort=nearest] Pos[0]
execute store result score 0 pos2y run data get entity @e[type=armor_stand,tag=pos2,limit=1,sort=nearest] Pos[1]
execute store result score 0 pos2z run data get entity @e[type=armor_stand,tag=pos2,limit=1,sort=nearest] Pos[2]
