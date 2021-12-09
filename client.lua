RegisterCommand('cp', function(source, args))
    TriggerEvent('chat:addMessage', {
        args = {'^1 Checking Pulse... ^1'}  
    }}

RegisterCommand('medkit', function(source, args))
    TriggerEvent('chat:addMessage', {
        args = {'^1 Applies Medkit and gauze... ^1'}
    }}

RegisterCommand('ems-duty-start', function(source, args))
    TriggerEvent('chat:addMessage', {
        args = ('You just began your ems duty!')
-- config here, change the ambulance if u have your own custom ambulance
        RequestModel(ambulance)
    
        while not HasModelLoaded(ambulance) do
            Wait(500)
        end
    
        local playerPed = PlayerPedID()
        local pos = GetEntityCoords(playerPed)
    
        local vehicle = CreateVehicle(vehicleName, pos.x, pox.y, pos.z, GetEntityHeading(playerPed), true, false)
    
        SetPedIntoVehicle(playerPed, vehicle, -1)
    
        SetEntityAsNoLongerNeeded(vehicle)
    
        SetModelAsNoLongerNeeded(vehicleName)
    }}
    