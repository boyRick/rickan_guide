ESX	= nil

Citizen.CreateThread(function()
	while ESX == nil do
	  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	  Citizen.Wait(0)
	  PlayerData = ESX.GetPlayerData()
	end
end)



function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end







RegisterCommand("Guide", function()

    SetNuiFocus(true, true)
    SendNUIMessage({type = 'gudeopen'})
end)

RegisterNUICallback('NUIFocusOff', function()
	SetNuiFocus(false, false)
end)

RegisterNetEvent('focusoff')
AddEventHandler('focusoff', function()
	inMenu = false
	SetNuiFocus(false, false)
	SendNUIMessage({type = 'closeAll'})
end)


local police1 = false

local police2 = false

local police3 = false

local police4 = false

local police5 = false

local police6 = false

local police7 = false

local police8 = false



RegisterNUICallback('policecar1', function(data, cb)
    police1 = true
    SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    TriggerServerEvent('getmoney:car')
    DoScreenFadeIn(1799)
    police1 = false

end)

RegisterNUICallback('policecar2', function(data, cb)
    police2 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police2 = false

end)

 
RegisterNUICallback('policecar3', function(data, cb)
    police3 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police3 = false
end)

 
RegisterNUICallback('policecar4', function(data, cb)
    police4 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police4 = false
end)

 
RegisterNUICallback('policecar5', function(data, cb)
    police5 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police5 = false
end)

 
RegisterNUICallback('policecar6', function(data, cb)
    police6 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police6 = false

end)

 
RegisterNUICallback('policecar7', function(data, cb)
    police7 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police7 = false

end)

 
RegisterNUICallback('policecar8', function(data, cb)
    police8 = true
    TriggerServerEvent('getmoney:car')
	SetNuiFocus(false, false)
    DoScreenFadeOut(1009)
    Citizen.Wait(1499)
    TriggerEvent("police:caryow3")
    Citizen.Wait(1499)
    DoScreenFadeIn(1799)
    police8 = false

end)


RegisterNetEvent("police:caryow3")
AddEventHandler("police:caryow3", function (source, args, rawCommand)

    if police1 then
        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar1
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar1
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)

            
        end)
        police = false

        
    elseif police2 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar2
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar2
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police2 = false

    elseif police3 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar3
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar3
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police3 = false


    elseif police4 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar4
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar4
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police4 = false



    elseif police5 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar5
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar5
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police5 = false


    elseif police6 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar4
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar4
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police6 = false

    elseif police7 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar7
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar7
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police7 = false



    elseif police8 then

        local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 8.0, 0.5))
        local veh = Config.Policecar8
        vehiclehash = GetHashKey(veh)
        RequestModel(vehiclehash)
        
        Citizen.CreateThread(function() 
            local waiting = 0
            while not HasModelLoaded(vehiclehash) do
                waiting = waiting + 100
                Citizen.Wait(100)
                if waiting > 5000 then
                    ShowNotification("~r~Could not load the vehicle model in time, a crash was prevented.")
                    break
                end
            end
            lastcar = CreateVehicle(vehiclehash, 438.77, -1026.7, 28.43, GetEntityHeading(PlayerPedId())+90, 1, 0)
            SetPedIntoVehicle(PlayerPedId(),lastcar,-1)
            local vehname = GetDisplayNameFromVehicleModel(model)
            print(vehname)
            local plate = GetVehicleNumberPlateText(lastcar)
            local vehicle = Config.Policecar8
           
            TriggerEvent("keys:addNew",lastcar,plate)
            TriggerServerEvent('BuyForVeh', plate, vehname, vehicle, price, financed)
        end)

        police8 = false

    end
    
    


end)