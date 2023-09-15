advancement revoke @s only minecraft:funzen_sky_adv/coarse
scoreboard players set $coarse_ray skyblock_scores 250
scoreboard players set $coarse_found skyblock_scores 0
execute anchored eyes positioned ^ ^ ^ run function funzen_skyblock:custom_mechanics/mycelium_conversion/coarse_ray
