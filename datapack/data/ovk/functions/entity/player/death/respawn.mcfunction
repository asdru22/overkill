effect give @s resistance infinite 20 true
function ovk:entity/player/stats/health/get
scoreboard players operation @s ovk.s.current_health = @s ovk.s.max_health
tag @s remove ovk.player.dead

attribute @s generic.armor base set -2000