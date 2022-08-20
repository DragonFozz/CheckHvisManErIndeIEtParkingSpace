local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('test2', function()
    TriggerEvent('CheckIfPlayerIsInGarageAreaAndSpace')
end)

RegisterNetEvent('CheckIfPlayerIsInGarageAreaAndSpace', function()
    local inRageOfAnyGarage = false
    QBCore.Functions.TriggerCallback('checkIfInSquare', function(whichgarage, spawnpoint, spotname)
        if whichgarage == "none" or spawnpoint == nil then
            --ikke inde i både et garage område og et parking space her kan man smide en error eller w.e
            print(whichgarage)
            print(spawnpoint)
            print(spotname)
        else
            -- inde i både et garage område og et parking space, her kan man sætte sin takeout function / parking function
            -- TriggerServerEvent(Takeoutofgarage,whichgarage, spawnpoint)
            print(whichgarage)
            print(spawnpoint)
            print(spotname)
        end
    end, Config.Garages)

end)
