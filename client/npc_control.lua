function SetWeaponDrops()

    local handle, ped = FindFirstPed()

    local finished = false 



    repeat 

        if not IsEntityDead(ped) then

            SetPedDropsWeaponsWhenDead(ped, false) 

        end

        finished, ped = FindNextPed(handle)

    until not finished



    EndFindPed(handle)

end



Citizen.CreateThread(function()

    while true do

        SetWeaponDrops()

		SetPedDensityMultiplierThisFrame(1.0)

        SetScenarioPedDensityMultiplierThisFrame(1.0, 1.0)

        SetVehicleDensityMultiplierThisFrame(0.25)

        SetRandomVehicleDensityMultiplierThisFrame(0.25)

        SetParkedVehicleDensityMultiplierThisFrame(0.25)

        Citizen.Wait(0)

    end

end)