scoreboard objectives add ovk.data dummy
# combat aux
scoreboard objectives add ovk.damage_resisted minecraft.custom:minecraft.damage_resisted
scoreboard objectives add ovk.mob_health dummy
scoreboard objectives add ovk.old_health dummy
# Stats
scoreboard objectives add ovk.s.current_health dummy
scoreboard objectives add ovk.s.max_health dummy

scoreboard objectives add ovk.s.current_mana dummy
scoreboard objectives add ovk.s.max_mana dummy
scoreboard objectives add ovk.s.armor dummy
#scoreboard objectives add ovk.s.damage dummy           May become useful
#scoreboard objectives add ovk.s.toughness dummy
scoreboard objectives add ovk.s.lifetime dummy

scoreboard objectives add ovk.quest dummy

scoreboard objectives add ovk.using_item dummy
scoreboard objectives add ovk.prev_using_item dummy

#Wand and Sword detection
scoreboard objectives add ovk.use_wofas minecraft.used:minecraft.warped_fungus_on_a_stick

#Reload
scoreboard objectives add ovk.reload.melee dummy
scoreboard objectives add ovk.reload.ranged dummy
scoreboard objectives add ovk.reload.magic dummy

scoreboard objectives add ovk.seconds_since_last_hit dummy
# consts
scoreboard players set 2 ovk.data 2
scoreboard players set 4 ovk.data 4
scoreboard players set 5 ovk.data 5
scoreboard players set 10 ovk.data 10
scoreboard players set 20 ovk.data 20
scoreboard players set 25 ovk.data 25
scoreboard players set 100 ovk.data 100
scoreboard players set 125 ovk.data 125
scoreboard players set 150 ovk.data 150
scoreboard players set 250 ovk.data 250
scoreboard players set 1000 ovk.data 1000
scoreboard players set 10000 ovk.data 10000
scoreboard players set 1000000 ovk.data 1000000
function ovk:technical/second

gamerule naturalRegeneration false

execute positioned 3000000 0 0 run forceload add ~ ~
setblock 3000000 0 0 barrel{Items:[{id:"minecraft:stone",Count:1b}]} destroy
setblock 3000000 1 0 oak_sign destroy

scoreboard players set #DAMAGE_CAP ovk.data 2000000000

tellraw @a [{"text":"LOADED","color":"#653AA0"}]