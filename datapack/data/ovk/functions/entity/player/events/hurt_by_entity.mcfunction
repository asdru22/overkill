scoreboard players set $generic_trigger ovk.data 1
# Execute as attacking entity
execute if entity @s[ovkancements={ovk:technical/entity_hurt_player={entity=true}}] on attacker at @s run function ovk:entity/mob/events/hurt_player
# Return executing as player
function ovk:entity/combat/player/get_equipment
execute if score $generic_trigger ovk.data matches 1 run function ovk:entity/player/events/generic_damage
scoreboard players set @s ovk.seconds_since_last_hit 5
execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"True damage resisted: "},{"score":{"name":"@s","objective":"ovk.damage_resisted"}}]

scoreboard players operation $damage ovk.data = @s ovk.damage_resisted
function ovk:entity/player/stats/defense/main

scoreboard players operation @s ovk.s.current_health -= $damage ovk.data

function ovk:entity/player/stats/health/calc_percentage

execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Health %: "},{"score":{"name":"$health%","objective":"ovk.data"}}]

scoreboard players reset @s ovk.damage_resisted
ovkancement revoke @s only ovk:technical/entity_hurt_player