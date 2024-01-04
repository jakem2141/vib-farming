-------------
--Variables--
-------------

pigs = {}
cows = {}

---------
--Pigs--
---------

CreateThread(function()
    local pigInfo = Config.Pigs
    for i = 1, Config.Pigs.AmountOfPigs do
        print(json.encode(i, {indent = true}))
        Wait(500)
        local pig = CreatePed(1, Config.Pigs.Model, Config.Pigs.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(pig)
        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, i, serverEntity)
        TriggerClientEvent('farming:client:ControlSpawnedAnimals', -1, i, pigInfo, serverEntity)
    end
end)

--------
--Cows--
--------

-- CreateThread(function()
--     for k, v in pairs(Config.Cows) do
--         -- Do cow spawning stuff here
--     end
-- end)