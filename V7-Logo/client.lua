local disocrdActive = false

function disocrd()
    SendNUIMessage({
        action = 'open',
        img = Config.Url_Img,
    })
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        if disocrdActive then
            disocrd()
            disocrdActive = false
        end
    end
end)

AddEventHandler('playerSpawned', function()
    disocrdActive = true
end)
