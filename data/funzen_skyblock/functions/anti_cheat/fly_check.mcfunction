execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{FallFlying:1b}] at @s if block ~ ~-0.5 ~ minecraft:air if block ~ ~ ~ minecraft:air run scoreboard players add @s fly_count 2
execute as @a if score @s fly_count matches 300.. run tellraw @a[tag=Admin] [{"text":"⚠ ", "color":"#FF9000"}, {"selector":"@s", "color":"yellow"}, {"text":" Is FlyCheating", "color": "red"}, {"text":" ⚠", "color":"#FF9000"}]
execute as @a at @a[tag=Admin] if score @s fly_count matches 300.. run playsound minecraft:block.amethyst_block.fall master @a[tag=Admin]
execute as @a at @s unless block ~ ~-0.5 ~ minecraft:air if score @s fly_count matches 1.. run scoreboard players remove @s fly_count 6
execute as @a if score @s fly_count matches 300.. run scoreboard players set @s fly_count 200
schedule function funzen_skyblock:anti_cheat/fly_check 2t