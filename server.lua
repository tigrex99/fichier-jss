TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('myCrafting:getInventory', function(source, cb)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local inventory = {}
    for k, v in pairs(xPlayer.getInventory()) do
        if v.count > 0 then
            table.insert(inventory, v)
        end
    end
    cb(inventory)
end)

RegisterNetEvent('myCrafting:Craft')
AddEventHandler('myCrafting:Craft', function(item, removeItems, isAWeapon, quantity)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)

    for k, v in pairs(removeItems) do
		if v ~= '' then
			xPlayer.removeInventoryItem(v, 1)
		end
    end

    if (isAWeapon) then
        xPlayer.addWeapon(item, 250)
    else
        xPlayer.addInventoryItem(item, quantity)
    end
    
end)

if cfg.command.allowed then
    RegisterCommand(cfg.command.text, function(src, args, rawCommand)
        TriggerClientEvent('myCrafting:Open', src)
    end, false)
end