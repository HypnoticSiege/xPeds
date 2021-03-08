local myPed = PlayerPedId()
local localPed = PlayerId()
    function notify(string)
        SetNotificationTextEntry("STRING")
        AddTextComponentString(string)
        DrawNotification(true, false)
    end
    function loadModel(modelHash)
        local model = GetHashKey(modelHash)
        RequestModel(model)
        while not HasModelLoaded(model) do
            RequestModel(model)
            Citizen.Wait(0)
        end        
        SetPlayerModel(localPed, model)
        SetModelAsNoLongerNeeded(model)
    end


    --SHERIFF PED
    RegisterCommand('sheriff', function()
        loadModel("s_m_y_sheriff_01")
        notify("~g~Sheriff~w~ Ped Applied!")
    end, false)


    --PD PED
    RegisterCommand('cop', function()
        loadModel("s_m_y_cop_01")
        notify("~b~Police~w~ Ped Applied!")
    end, false)


    --SWAT PED
    RegisterCommand('swat', function()
        loadModel("S_M_Y_Swat_01")
        notify("~r~SWAT~w~ Ped Applied!")
    end, false)


    --PRISONER PED
    RegisterCommand('prisoner', function()
        loadModel("S_M_Y_Prisoner_01")
        notify("~o~Prisoner~w~ Ped Applied!")
    end, false)


    --EMS PED
    RegisterCommand('ems', function()
        loadModel('S_M_M_Paramedic_01')
        notify("~b~~h~EMS~h~~w~ Ped Applied!")
    end, false)


    --FIRE PED
    RegisterCommand('fire', function()
        loadModel('S_M_Y_Fireman_01')
        notify("~r~Fire~w~ Ped Applied!")
    end, false)


    --Remove Ped #2
    RegisterCommand('pedremove2', function()
        loadModel('a_m_y_hipster_02')
        notify("~g~Sucess!~w~ Ped Removed!")
    end, false)

    --Remove Ped
    RegisterCommand('pedremove', function()
        loadModel('a_m_y_hipster_01')
        notify("~g~Sucess! ~w~Ped Removed!")
    end, false)


    --Chat Suggestions
    TriggerEvent('chat:addSuggestion', '/sheriff', 'Applies Sheriff Ped!')        
    TriggerEvent('chat:addSuggestion', '/cop', 'Applies Police Dept. Ped!')
    TriggerEvent('chat:addSuggestion', '/swat', 'Loads the SWAT Team loadout')    
    TriggerEvent('chat:addSuggestion', '/prisoner', 'Applies Prisoner Outfit!')
    TriggerEvent('chat:addSuggestion', '/ems', 'Applies EMS Ped!')
    TriggerEvent('chat:addSuggestion', '/fire', 'Applies Fire Dept. Ped!')    
    TriggerEvent('chat:addSuggestion', '/pedremove', 'Removes Current Ped!')    
    TriggerEvent('chat:addSuggestion', '/pedremove2', 'Removes Current Ped!')    