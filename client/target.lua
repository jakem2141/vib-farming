RegisterNetEvent('farming:client:TargetAnimalEntity', function(data, serverEntity)
    Wait(500)
    local clientEntity = NetworkGetEntityFromNetworkId(serverEntity)

    local entity = exports.ox_target:addLocalEntity(clientEntity, {
        {
            label = "Interact with: "..clientEntity,
            onSelect = function()
                print("You selected pig number: "..clientEntity)
            end,
            icon = 'fas fa-shopping-basket',
            iconColor = "green",
            distance = 2.0
        }
    })
end)