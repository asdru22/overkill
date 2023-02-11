execute unless block ~ ~ ~ #ovk:nocollision run function ovk:entity/projectile/kill
execute if score @s ovk.s.lifetime matches 40.. run function ovk:entity/projectile/kill

execute store result score $damage ovk.data run data get entity @s DisabledSlots

scoreboard players reset $kill ovk.data