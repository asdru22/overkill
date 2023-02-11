execute as @e[type=!#ovk:not_mob] at @s run function ovk:entity/tick
execute as @a at @s run function ovk:entity/player/tick

#another @e, but only for projectiles
execute as @e[type=armor_stand,tag=ovk.proj] at @s run function ovk:entity/projectile/tick