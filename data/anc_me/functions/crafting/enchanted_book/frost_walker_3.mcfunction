tag @s add amCrafting
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:frost_walker",lvl:2s}]}}},tag=!amCrafting] run data modify entity @s Item.tag.StoredEnchantments.[{id:"minecraft:frost_walker"}].lvl set value 1s
execute as @e[type=item,distance=..1,nbt={Item:{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:frost_walker",lvl:2s}]}}},tag=!amCrafting] at @s run kill @s
