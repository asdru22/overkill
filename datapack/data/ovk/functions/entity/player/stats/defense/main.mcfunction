function ovk:entity/player/stats/defense/get_vanilla
function ovk:entity/player/stats/defense/get_toughness
execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Armor: "},{"score":{"name":"$defense","objective":"ovk.data"}}]
function ovk:entity/player/stats/defense/calc

execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Damage Recived: "},{"score":{"name":"$damage","objective":"ovk.data"},"color":"gold"}]