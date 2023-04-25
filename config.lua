cfg = {}

cfg.Locale = 'en'

-- You can set up the colors of this system at the very top of the style.css

cfg.Button = {
    enable = true, -- enable the button
    control = 56 -- button to open the workbench
}

cfg.command = {
    allowed = true, --enable the command
    text = 'craft' -- the command
}

cfg.CraftingStationInteractButton = 38 -- button to open the workbench

cfg.CraftingStations = {
	{x = -343.81, y = -140.01, z = 39.01}, -- position of the workbench
}

cfg.Recipes = { -- All Recipes
    {
        label = 'Bagel',
        item = 'bagel',
        field1 = {name = '', label = ''}, -- top left
        field2 = {name = 'bread', label = 'Bread'}, -- top center
        field3 = {name = '', label = ''}, -- top right
        field4 = {name = 'bread', label = 'Bread'}, -- middle left
        field5 = {name = '', label = ''}, -- middle center
        field6 = {name = 'bread', label = 'Bread'}, -- middle right
        field7 = {name = '', label = ''}, -- bottom left
        field8 = {name = 'bread', label = 'Bread'}, -- bottom center
        field9 = {name = '', label = ''}, -- bottom right
        invisible = false, 
        requiredItem = {name = '', label = ''},
        isAWeapon = false,
		job = '', -- should a Job be required to craft this
		added = false, -- do not touch
        quantity = 1,
        
    },

    {
        label = 'Pistol .50',
        item = 'WEAPON_PISTOL50',
        field1 = {name = 'iron', label = 'Iron'}, -- top left
        field2 = {name = 'iron', label = 'Iron'}, -- top center
        field3 = {name = 'iron', label = 'Iron'}, -- top right
        field4 = {name = 'copper', label = 'Copper'}, -- middle left
        field5 = {name = '', label = ''}, -- middle center
        field6 = {name = '', label = ''}, -- middle right
        field7 = {name = 'copper', label = 'Copper'}, -- bottom left
        field8 = {name = '', label = ''}, -- bottom center
        field9 = {name = '', label = ''}, -- bottom right
        invisible = true, -- if the item should be 
        requiredItem = {name = 'recipe_weapon_pistol50', label = 'Recipe for Pistol .50'}, -- is a recipe required to craft this item?
        isAWeapon = true,
		job = '', -- 
		added = false,
        quantity = 1,
    }
}

Translation = {
    ['de'] = {
        ['help_notification'] = 'Drücke ~o~E~s~, um die Workbench zu öffnen',
        ['need_requireditem_part1'] = 'Du benötigst ~b~',
        ['need_requireditem_part2'] = '~s~, um dieses Rezept herzustellen!'
    },
    ['en'] = {
        ['help_notification'] = 'Press ~o~E~s~ to open the workbench',
        ['need_requireditem_part1'] = 'You need ~b~',
        ['need_requireditem_part2'] = '~s~ to craft this item!'
    }
}