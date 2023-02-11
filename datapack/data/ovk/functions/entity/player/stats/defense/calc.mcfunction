## scores are @s ovk.s.armor and $damage ovk.data (10x scale)

## dmg * (1- (min (20, max (def/5, def- ( (4*dmg) / (toughness+8) ) ) ) )

# 1
scoreboard players operation #armor_calc ovk.data = $defense ovk.data
scoreboard players operation #armor_calc ovk.data /= 5 ovk.data

# 2
scoreboard players operation #toughness_calc ovk.data = $toughness ovk.data
scoreboard players add #toughness_calc ovk.data 80

# 3
scoreboard players operation #damage_toughness ovk.data = $damage ovk.data
scoreboard players operation #damage_toughness ovk.data *= 100 ovk.data
scoreboard players operation #damage_toughness ovk.data /= #toughness_calc ovk.data

# 4
scoreboard players operation #damage_toughness ovk.data *= 4 ovk.data

# 5
scoreboard players operation #10ATF ovk.data = $defense ovk.data
scoreboard players operation #10ATF ovk.data -= #damage_toughness ovk.data

# 6
scoreboard players operation #armor_calc ovk.data > #10ATF ovk.data

# 7
scoreboard players operation #armor_calc ovk.data < #DAMAGE_CAP ovk.data

# 8
scoreboard players set $temp_dmg ovk.data 250
scoreboard players operation $temp_dmg ovk.data -= #armor_calc ovk.data

# 9
scoreboard players operation $temp_dmg ovk.data *= $damage ovk.data

# 10
scoreboard players operation $temp_dmg ovk.data /= 250 ovk.data


# End
execute if score $temp_dmg ovk.data matches ..0 run scoreboard players set $temp_dmg ovk.data 0
scoreboard players operation $damage ovk.data = $temp_dmg ovk.data