-------------
--Variables--
-------------

pigs = {}
cows = {}

---------
--Pigs--
---------

CreateThread(function()
    for i = 1, Config.Pigs.AmountOfPigs do
        Wait(500)
        local pig = CreatePed(1, Config.Pigs.Model, Config.Pigs.SpawnLocation.xyz, true, true)
        Wait(500)
        local serverEntity = NetworkGetNetworkIdFromEntity(pig)
        TriggerClientEvent('farming:client:TargetAnimalEntity', -1, serverEntity)
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