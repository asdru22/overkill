# get mob data
tag @s add ovk.me
execute as @e[tag=!ovk.me,type=!#ovk:not_mob,nbt={HurtTime:10s}] at @s run function ovk:entity/mob/events/hurt_by_player
tag @s remove ovk.me

ovkancement revoke @s only ovk:technical/player_hurt_entity