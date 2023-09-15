execute as @e[type=marker,tag=mycelium] at @s if score $mycelium_counter skyblock_scores matches 24 if predicate funzen_skyblock:mycelium run function funzen_skyblock:custom_mechanics/mycelium_conversion/convert
execute as @e[type=marker,tag=mycelium] at @s if score $mycelium_counter skyblock_scores matches ..23 run playsound block.composter.fill block @a
execute as @e[type=marker,tag=mycelium] at @s if score $mycelium_counter skyblock_scores matches 24 run playsound block.composter.fill_success block @a
execute as @e[type=marker,tag=mycelium] at @s if block ~ ~-1 ~ mycelium run kill @s
execute as @e[type=marker,tag=mycelium] at @s unless predicate funzen_skyblock:mycelium run kill @s
execute as @e[type=marker,tag=mycelium] at @s if predicate funzen_skyblock:mycelium unless block ~ ~-1 ~ mycelium run schedule function funzen_skyblock:custom_mechanics/mycelium_conversion/process 5s
scoreboard players add $mycelium_counter skyblock_scores 1