execute store result score $def ovk.data run data get storage ovk:storage root.temp.MobData.Stats.Armor.Melee.Blunt
scoreboard players operation $damage ovk.data -= $def ovk.data
execute if score $damage ovk.data matches ..0 run scoreboard players set $damage ovk.data 0
execute unless score $damage ovk.data matches 0 run function ovk:entity/combat/mob/defense_types/melee_perc