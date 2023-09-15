say "data pack loaded"
scoreboard objectives remove skyblock_scores
scoreboard objectives add skyblock_scores dummy
scoreboard objectives setdisplay sidebar skyblock_scores

scoreboard players set $clear_tick skyblock_scores 20

#Fly cheat detector scoreboard
scoreboard objectives remove fly_count
scoreboard objectives add fly_count dummy

schedule function funzen_skyblock:spawn_protection/spawn_effects 2t
schedule function funzen_skyblock:spawn_protection/clear_platform 4t
schedule function funzen_skyblock:custom_mechanics/coal_to_diamond/check 6t
schedule function funzen_skyblock:anti_cheat/fly_check 8t