scoreboard players remove $clear_tick skyblock_scores 1
execute if score $clear_tick skyblock_scores matches 5 as @p[x=0.5,y=66,z=0.5,distance=..16] run title @s actionbar {"text":"Warning: Clearing spawn platform","bold":true,"color":"#FF9550"}
execute if score $clear_tick skyblock_scores matches ..0 run fill -3 65 -3 3 65 3 bedrock
execute if score $clear_tick skyblock_scores matches ..0 run fill -3 66 -3 3 68 3 air
execute if score $clear_tick skyblock_scores matches ..0 as @p[x=0.5,y=66,z=0.5,distance=..16] run title @s actionbar {"text":"Spawn Cleared","bold":true,"color":"#71e216"}
execute if score $clear_tick skyblock_scores matches ..0 run scoreboard players set $clear_tick skyblock_scores 20

schedule function funzen_skyblock:spawn_protection/clear_platform 1s