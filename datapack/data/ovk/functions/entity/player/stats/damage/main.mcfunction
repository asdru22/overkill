scoreboard players set $damage ovk.data 0
execute if data storage ovk:storage root.temp.attack{Type:"Melee"} run function ovk:entity/player/stats/damage/melee/get
execute if data storage ovk:storage root.temp.attack{Type:"Ranged"} run function ovk:entity/player/stats/damage/ranged/get

execute if data storage ovk:storage root.temp.attack{Type:"Magic"} run function ovk:entity/player/stats/damage/magic/get


execute if score $debug ovk.data matches 1 run tellraw @a [{"text":"Player Damage: "},{"score":{"name":"$damage","objective":"ovk.data"}}]