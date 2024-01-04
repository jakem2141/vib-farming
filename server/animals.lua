-------------
--Variables--
-------------

pigs = {}
cows = {}

---------
--Pigs--
---------

CreateThread(function()
    local pigInfo = Config.Animals.Pigs
    local cowInfo = Config.Animals.Cows

    for i = 1, pigInfo.AmountOfAnimals do
        Wait(500)
        local pig = CreatePed(1, pigInfo.Model, pigInfo.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(pig)

        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, i, serverEntity)
        TriggerClientEvent('farming:client:ControlSpawnedAnimals', -1, i, pigInfo, serverEntity)
    end

    for i = 1, cowInfo.AmountOfAnimals do
        Wait(500)
        local cow = CreatePed(1, cowInfo.Model, cowInfo.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(cow)
        
        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, i, serverEntity)
        TriggerClientEvent('farming:client:ControlSpawnedAnimals', -1, i, cowInfo, serverEntity)
    end
end)