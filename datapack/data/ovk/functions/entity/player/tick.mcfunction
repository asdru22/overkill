#When wfoas is used
execute if score @s ovk.use_wofas matches 1.. run function ovk:item/wfoas

#Usable
execute if score @s ovk.using_item matches 1.. run function ovk:item/usable/tick

#Reload Timers
execute if score @s ovk.reload.ranged matches 1.. run scoreboard players remove @s ovk.reload.ranged 1
execute if score @s ovk.reload.magic matches 1.. run scoreboard players remove @s ovk.reload.magic 1