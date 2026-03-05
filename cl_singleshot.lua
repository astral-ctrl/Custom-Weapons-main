-- Wymuszenie single-shot dla WEAPON_GASPISTOL
local gasHash = GetHashKey("WEAPON_GASPISTOL")
local shooting = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()

        if GetSelectedPedWeapon(ped) == gasHash then
            if IsPlayerFreeAiming(PlayerId()) or IsControlPressed(0, 25) then
                -- Gracz celuje
                if IsControlPressed(0, 24) then
                    -- Przycisk strzalu trzymany
                    if shooting then
                        -- Juz strzelil - blokuj kolejne strzaly dopoki nie pusci
                        DisableControlAction(0, 24, true)
                    else
                        shooting = true
                    end
                else
                    -- Gracz puscil przycisk
                    shooting = false
                end
            else
                shooting = false
            end
        else
            shooting = false
        end
    end
end)
