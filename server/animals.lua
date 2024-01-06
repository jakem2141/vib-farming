-------------
--Variables--
-------------

Pigs = {}
Cows = {}

---------
--Pigs--
---------

CreateThread(function()
    local pigInfo = Config.Animals.Pigs
    local cowInfo = Config.Animals.Cows

    for i = 1, pigInfo.AmountOfAnimals do
        local pig = CreatePed(1, pigInfo.Model, pigInfo.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(pig)

        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, i, pigInfo, serverEntity)
        TriggerClientEvent('farming:client:ControlSpawnedAnimals', -1, i, pigInfo, serverEntity)

        table.insert(Pigs, pig)
    end

    for i = 1, cowInfo.AmountOfAnimals do
        local cow = CreatePed(1, cowInfo.Model, cowInfo.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(cow)
        
        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, i, cowInfo, serverEntity)
        TriggerClientEvent('farming:client:ControlSpawnedAnimals', -1, i, cowInfo, serverEntity)
        
        table.insert(Cows, cow)
    end
end)