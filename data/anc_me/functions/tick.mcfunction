execute as @e[type=#arrows] at @s run function anc_me:tick/arrow
execute as @a at @s run function anc_me:tick/player
execute as @e[type=trident,tag=!amChanneling,nbt={inGround:1b}] at @s if data entity @s Trident.tag.Enchantments.[{id:"minecraft:channeling",lvl:2s}] run function anc_me:channeling_2
execute as @a if predicate anc_me:aqua_affinity_2 run effect give @s haste 3 1 true
function anc_me:arrow/type
execute as @e[type=!#anc:not_kill] run function anc_me:tick/mob
execute as @e[type=player] run function anc_me:tick/mob
