RegisterNUICallback('clickedButton', function(data, cb)
    SetNuiFocus(false)

    if data.isServer then
        TriggerServerEvent(data.event, data.args)
    else
        TriggerEvent(data.event, data.args)
    end
end)

RegisterNUICallback('closeMenu', function()
    SetNuiFocus(false)
end)

RegisterNetEvent('s_menu:openMenu')
AddEventHandler('s_menu:openMenu', function(data)
    openMenu(data)
end)

RegisterNetEvent('s_menu:sendMenu')
AddEventHandler('s_menu:sendMenu', function(data)
    openMenu(data)
end)

function openMenu(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'OPEN_MENU',
        data = data
    })
end

exports("openMenu", openMenu)