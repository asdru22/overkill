summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:-1,Radius:0f,Duration:1,Age:-1,WaitTime:0,Tags:["ovk.magic_damage"],Effects:[{Id:6,Amplifier:0b,Duration:1,ShowParticles:0b},{Id:7,Amplifier:0b,Duration:1,ShowParticles:0b}]}
data modify storage ovk:storage root.temp.uuid set from entity @s UUID
execute as @e[type=area_effect_cloud,limit=1,tag=ovk.magic_damage,sort=nearest] run function ovk:entity/combat/apply_damage/magic_aec_setup