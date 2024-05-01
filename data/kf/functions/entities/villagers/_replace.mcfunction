#> kf:entities/villagers/_replace

# Tp down
tp ~ 500 ~

# Summon
    #> Sell Crops
    execute if entity @s[tag=kf.sellCrops] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.sellCrops],VillagerData:{profession:"farmer"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:wheat", Count: 8b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:beetroot", Count: 8b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:carrot", Count: 16b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:potato", Count: 16b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sweet_berries", Count: 45b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sugar_cane", Count: 45b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:cactus", Count: 35b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Beekeeper
    execute if entity @s[tag=kf.beekeeper] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.beekeeper],VillagerData:{profession:"librarian"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:honeycomb", Count: 1b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 4b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:honey_bottle", Count: 1b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 8b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 45b}, sell: {id: "minecraft:bee_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:beehive", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 64b}, sell: {id: "minecraft:bee_nest", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Buy Crops
    execute if entity @s[tag=kf.buyCrops] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.buyCrops],VillagerData:{profession:"fisherman"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 6b}, sell: {id: "minecraft:carrot", Count: 4b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 6b}, sell: {id: "minecraft:potato", Count: 4b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 12b}, sell: {id: "minecraft:pumpkin_seeds", Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 12b}, sell: {id: "minecraft:melon_seeds", Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 18b}, sell: {id: "minecraft:beetroot_seeds", Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 18b}, sell: {id: "minecraft:cocoa_beans", Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:sugar_cane", Count: 3b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:bamboo", Count: 3b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:cactus", Count: 3b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Buy Trees
    execute if entity @s[tag=kf.buyTrees] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.buyTrees],VillagerData:{profession:"fisherman"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:oak_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:birch_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:oak_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:spruce_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:jungle_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:acacia_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 16b}, sell: {id: "minecraft:dark_oak_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:cherry_sapling", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:mangrove_propagule", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:warped_fungus", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:crimson_fungus", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Butcher
    execute if entity @s[tag=kf.butcher] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.butcher],VillagerData:{profession:"butcher"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:porkchop", Count: 1b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:mutton", Count: 1b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:chicken", Count: 8b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:beef", Count: 1b}, sell: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 2b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 24b}, sell: {id: "minecraft:chicken_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 36b}, sell: {id: "minecraft:cow_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 36b}, sell: {id: "minecraft:pig_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 36b}, sell: {id: "minecraft:sheep_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 36b}, sell: {id: "minecraft:fox_spawn_egg", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Buy Misc
    execute if entity @s[tag=kf.buyMisc] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.buyMisc],VillagerData:{profession:"shepherd"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 4b}, sell: {id: "minecraft:water_bucket", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 8b}, sell: {id: "minecraft:lava_bucket", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647},{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 18b}, sell: {id: "minecraft:cauldron", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 2b}, sell: {id: "minecraft:dirt", Count: 8b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 6b}, sell: {id: "minecraft:grass_block", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 6b}, sell: {id: "minecraft:sand", Count: 12b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 12b}, sell: {id: "minecraft:crimson_nylium", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 12b}, sell: {id: "minecraft:warped_nylium", Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

    #> Buy Machines
    execute if entity @s[tag=kf.buyMachines] run summon villager ~ ~ ~ {Tags:[kf.trader,kf.buyMachines],VillagerData:{profession:"cartographer"},LastGossipDecay:0L,Gossips:[],NoAI:1b,Silent:1b,Invulnerable:1b,Offers:{Recipes: [{rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 23b}, sell: {id: "minecraft:warden_spawn_egg", tag: {display: {Name: '{"text":"Sprinkler","italic":false}'}, EntityTag: {teleport_duration: 1, block_state: {Name: "minecraft:cornflower", Properties: {}}, id: "block_display", Tags: ["kf.Sprinkler", "kf.RequiresPower", "kf.LowUsage"], transformation: {translation: [-0.5f, 1.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], left_rotation: [1.0f, 0.0f, 0.0f, 0.399f]}}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 35b}, sell: {id: "minecraft:allay_spawn_egg", tag: {display: {Name: '{"text":"Water Mill","italic":false}'}, EntityTag: {block_state: {Name: "oak_trapdoor"}, id: "block_display", Tags: ["kf.WaterMill", ".temp"], Rotation: [0.0f, 0.0f], transformation: {translation: [-0.2f, 1.0f, -1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], left_rotation: [0.0f, 0.0f, -0.703f, 0.711f]}}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 56b}, sell: {id: "minecraft:ghast_spawn_egg", tag: {display: {Name: '{"text":"Wind Mill","italic":false}'}, EntityTag: {teleport_duration: 1, block_state: {Name: "cobweb"}, id: "block_display", Tags: ["kf.WindMill", ".temp"], Rotation: [0.0f, 0.0f], transformation: {translation: [-1.0f, -1.0f, -1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], left_rotation: [0.0f, 0.0f, 0.0f, 1.0f]}}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 64b}, sell: {id: "minecraft:phantom_spawn_egg", tag: {display: {Name: '{"text":"Harvester","italic":false}'}, EntityTag: {id: "marker", Tags: ["kf.Harvester", ".temp"]}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 36b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 64b}, sell: {id: "minecraft:skeleton_spawn_egg", tag: {display: {Name: '{"text":"Crystalizer","italic":false}'}, EntityTag: {Tags: ["kf.Crystalizer", ".temp", "kf.RequiresPower", "kf.HighUsage"], Rotation: [0.0f, 0.0f], id: "marker"}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:sunflower", tag: {k.Coin: 1b, display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}}, Count: 36b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 16b}, sell: {id: "minecraft:llama_spawn_egg", tag: {display: {Name: '{"text":"Collector","italic":false}'}, EntityTag: {id: "marker", Tags: ["kf.Collector", ".temp"]}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}, {rewardExp: 1b, xp: 2, buy: {id: "minecraft:sunflower", tag: {display: {Name: '{"text":"Coin","color":"gold","italic":false}', Lore: ['{"text":"Fancy Coin!","color":"gray","italic":false}']}, k.Coin: 1b}, Count: 64b}, sell: {id: "minecraft:ghast_spawn_egg", tag: {display: {Name: '{"text":"Power Bank","italic":false}'}, EntityTag: {id: "item_display", Rotation: [0.0f, 0.0f], Tags: ["kf.PowerBank", ".temp"]}}, Count: 1b}, uses: 0, demand: 0, priceMultiplier: 0.05f, specialPrice: 0, buyB: {id: "minecraft:air", Count: 0b}, maxUses: 2147483647}]}}

# Kill
kill @s