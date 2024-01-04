QBCore = exports["qb-core"]:GetCoreObject()

-------------
--Variables--
-------------

---------------
--Event Stuff--
---------------

RegisterNetEvent('farming:client:ControlSpawnedAnimals', function(data, pigInfo, serverEntity)
    Wait(500)
    local clientEntity = NetworkGetEntityFromNetworkId(serverEntity)

    TaskWanderInArea(clientEntity, pigInfo.SpawnLocation.xyz, 10.0, 15, 3.0)
end)