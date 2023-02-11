scoreboard players set $tot ovk.data 100
execute store result score $perc ovk.data run data get storage ovk:storage root.temp.MobData.Stats.Armor.Ranged.Percentile 100
scoreboard players operation $tot ovk.data -= $perc ovk.data
scoreboard players operation $damage ovk.data *= $tot ovk.data
scoreboard players operation $damage ovk.data /= 100 ovk.data