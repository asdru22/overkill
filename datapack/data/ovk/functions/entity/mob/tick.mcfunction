# Track health and diff
execute store result score @s ovk.mob_health run data get entity @s Health 100
execute store result score $natural_damage ovk.data run scoreboard players operation @s ovk.old_health -= @s ovk.mob_health
scoreboard players operation @s ovk.old_health = @s ovk.mob_health
##
execute unless score $natural_damage ovk.data matches 0 if entity @s[type=!player,tag=!ovk.entity.player_hurt,nbt={HurtTime:9s}] run function ovk:entity/mob/events/generic_hurt
tag @s remove ovk.entity.player_hurt