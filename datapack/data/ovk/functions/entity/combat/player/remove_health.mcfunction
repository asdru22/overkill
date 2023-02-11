function ovk:entity/combat/player/get_equipment

execute if data storage ovk:storage root.temp.attack{Type:"Melee"} run function ovk:entity/player/stats/defense/melee/get
execute if data storage ovk:storage root.temp.attack{Type:"Ranged"} run function ovk:entity/player/stats/defense/ranged/get
execute if data storage ovk:storage root.temp.attack{Type:"Magic"} run function ovk:entity/player/stats/defense/magic/get

function ovk:entity/player/stats/defense/get_toughness

function ovk:entity/player/stats/defense/calc

scoreboard players operation @s ovk.s.current_health -= $damage ovk.data

function ovk:entity/player/stats/health/calc_percentage