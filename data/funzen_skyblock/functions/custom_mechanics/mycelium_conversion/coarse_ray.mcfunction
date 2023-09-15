execute store success score $coarse_found skyblock_scores align xyz positioned ~0.5 ~0.5 ~0.5 if predicate funzen_skyblock:mycelium
scoreboard players set $convert_mycelium skyblock_scores 2500
execute if score $coarse_found skyblock_scores matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:[mycelium]}
scoreboard players set $mycelium_counter skyblock_scores 0
execute as @e[type=marker,tag=mycelium] at @s if score $coarse_found skyblock_scores matches 1 run function funzen_skyblock:custom_mechanics/mycelium_conversion/process
scoreboard players remove $coarse_ray skyblock_scores 1
execute unless score $coarse_found skyblock_scores matches 1 if score $coarse_ray skyblock_scores matches 1.. positioned ^ ^ ^0.02 run function funzen_skyblock:custom_mechanics/mycelium_conversion/coarse_ray