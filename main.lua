---------------------------------------------------------------
----------------------- DEVELOPED BY KoZeuh#9070----------------------------------
----------------------- 2020 -----------------------------------------------------
---------------------- CONTACT ENGLISH OR FRENCH  -------------------------------
--------------------------------------------------------

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

-- FAMILIES
Citizen.CreateThread(function()
    RequestModel(GetHashKey("g_m_y_salvagoon_01"))
	
    while not HasModelLoaded(GetHashKey("g_m_y_salvagoon_01")) do
        Wait(1)
    end
	
	if Config.EnableQuartier or Config.EnableWeapons then
		for _, item in pairs(Config.Locations1) do
			local npc = CreatePed("PED_TYPE_CIVMALE", "g_m_y_salvagoon_01", item.x, item.y, item.z, item.heading, false, true)
			
			FreezeEntityPosition(npc, false)
			SetEntityHeading(npc, item.heading)
			SetEntityInvincible(npc, false) --NPC can die (set "true" to change)
			SetBlockingOfNonTemporaryEvents(npc, false)
			RequestAnimDict("anim@amb@nightclub@peds@")
			while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
			Citizen.Wait(1000)
			end
				
	        Citizen.Wait(200)	
			TaskPlayAnim(npc,"anim@amb@nightclub@peds@","amb_world_human_stand_guard_male_base",1.0, 1.0, -1, 1, 1.0, 0, 0, 0)
			GiveWeaponToPed(npc, GetHashKey("WEAPON_BOTTLE"), 1, false, true)
            GiveWeaponToPed(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100), true, false)
            SetPedAmmo(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100))
            SetCurrentPedWeapon(npc, GetHashKey("WEAPON_PISTOL"), true)
		end
	end
end)

-- VOITURE 1 CRIPS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('buccaneer', vector3(-146.16, -1720.15, 30.13), 319.62, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 0, 0, 255)
		SetVehicleCustomSecondaryColour(vehicle, 0, 0, 255)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'CRIPS',
		  })
	   end)
	end
end)

-- VOITURE 1 CRIPS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('buccaneer', vector3(-135.83, -1543.48, 34.34), 234.33, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 0, 0, 255)
		SetVehicleCustomSecondaryColour(vehicle, 0, 0, 255)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'CRIPS',
		  })
	   end)
	end
end)
-- VOITURES 1 BLOODS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('primo2', vector3(70.36, -1911.19, 21.63), 138.53, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 255, 0, 0)
		SetVehicleCustomSecondaryColour(vehicle, 255, 0, 0)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'BLOODS',
		  })
	   end)
	end
end)

-- VOITURE 2 BLOODS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('voodoo', vector3(115.06, -1948.52, 20.62), 51.46, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 255, 0, 0)
		SetVehicleCustomSecondaryColour(vehicle, 255, 0, 0)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'BLOODS',
		  })
	   end)
	end
end)

-- BLOODS
Citizen.CreateThread(function()
    RequestModel(GetHashKey("ig_claypain"))
	
    while not HasModelLoaded(GetHashKey("ig_claypain")) do
        Wait(1)
    end
	
	if Config.EnableQuartier or Config.EnableWeapons then
		for _, item in pairs(Config.Locations2) do
			local npc = CreatePed("PED_TYPE_CIVMALE", "ig_claypain", item.x, item.y, item.z, item.heading, false, true)
			
			FreezeEntityPosition(npc, false)
			SetEntityHeading(npc, item.heading)
			SetEntityInvincible(npc, false) --NPC can die (set "true" to change)
			SetBlockingOfNonTemporaryEvents(npc, false)
			RequestAnimDict("anim@amb@nightclub@peds@")
			while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
			Citizen.Wait(1000)
			end
				
	        Citizen.Wait(200)	
			TaskPlayAnim(npc,"anim@amb@nightclub@peds@","amb_world_human_stand_guard_male_base",1.0, 1.0, -1, 1, 1.0, 0, 0, 0)
			GiveWeaponToPed(npc, GetHashKey("WEAPON_BOTTLE"), 1, false, true)
            GiveWeaponToPed(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100), true, false)
            SetPedAmmo(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100))
            SetCurrentPedWeapon(npc, GetHashKey("WEAPON_PISTOL"), true)
		end
	end
end)

-- VAGOS
Citizen.CreateThread(function()
    RequestModel(GetHashKey("u_m_y_mani"))
	
    while not HasModelLoaded(GetHashKey("u_m_y_mani")) do
        Wait(1)
    end
	
	if Config.EnableQuartier or Config.EnableWeapons then
		for _, item in pairs(Config.Locations3) do
			local npc = CreatePed("PED_TYPE_CIVMALE", "u_m_y_mani", item.x, item.y, item.z, item.heading, false, true)
			
			FreezeEntityPosition(npc, false)
			SetEntityHeading(npc, item.heading)
			SetEntityInvincible(npc, false) --NPC can die (set "true" to change)
			SetBlockingOfNonTemporaryEvents(npc, false)
			RequestAnimDict("anim@amb@nightclub@peds@")
			while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
			Citizen.Wait(1000)
			end
				
	        Citizen.Wait(200)	
			TaskPlayAnim(npc,"anim@amb@nightclub@peds@","amb_world_human_stand_guard_male_base",1.0, 1.0, -1, 1, 1.0, 0, 0, 0)
			GiveWeaponToPed(npc, GetHashKey("WEAPON_BOTTLE"), 1, false, true)
            GiveWeaponToPed(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100), true, false)
            SetPedAmmo(npc, GetHashKey("WEAPON_PISTOL"), math.random(20, 100))
            SetCurrentPedWeapon(npc, GetHashKey("WEAPON_PISTOL"), true)
		end
	end
end)

-- LOST
Citizen.CreateThread(function()
    RequestModel(GetHashKey("ig_clay"))
	
    while not HasModelLoaded(GetHashKey("ig_clay")) do
        Wait(1)
    end
	
	if Config.EnableQuartier or Config.EnableWeapons then
		for _, item in pairs(Config.Locations4) do
			local npc = CreatePed("PED_TYPE_CIVMALE", "ig_clay", item.x, item.y, item.z, item.heading, false, true)
			
			FreezeEntityPosition(npc, false)
			SetEntityHeading(npc, item.heading)
			SetEntityInvincible(npc, false) --NPC can die (set "true" to change)
			SetBlockingOfNonTemporaryEvents(npc, false)
			RequestAnimDict("anim@amb@nightclub@peds@")
			while not HasAnimDictLoaded("anim@amb@nightclub@peds@") do
			Citizen.Wait(1000)
			end
				
	        Citizen.Wait(200)	
			TaskPlayAnim(npc,"anim@amb@nightclub@peds@","amb_world_human_stand_guard_male_base",1.0, 1.0, -1, 1, 1.0, 0, 0, 0)
			GiveWeaponToPed(npc, GetHashKey("WEAPON_BOTTLE"), 1, false, true)
            GiveWeaponToPed(npc, GetHashKey("WEAPON_BAT"), math.random(20, 100), true, false)
            SetPedAmmo(npc, GetHashKey("WEAPON_BAT"), math.random(20, 100))
            SetCurrentPedWeapon(npc, GetHashKey("WEAPON_BAT"), true)
		end
	end
end)


-- VOITURE 1 VAGOS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('tornado', vector3(335.29, -1955.01, 24.50),231.76, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 255, 250, 5)
		SetVehicleCustomSecondaryColour(vehicle, 255, 250, 5)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'VAGOS',
		  })
	   end)
	end
end)

-- VOITURE 1 VAGOS

Citizen.CreateThread(function()
	Citizen.Wait(100)
    if Config.EnableVehicle then
		ESX.Game.SpawnVehicle('tornado', vector3(244.75, -2061.19, 17.65),227.28, function(vehicle) 
		SetVehicleDoorsLocked(vehicle,2)
		local color = GetIsVehiclePrimaryColourCustom(vehicle)
		local color = GetIsVehicleSecondaryColourCustom(vehicle)
		SetVehicleCustomPrimaryColour(vehicle, 255, 250, 5)
		SetVehicleCustomSecondaryColour(vehicle, 255, 250, 5)
			ESX.Game.SetVehicleProperties(vehicle, {
			plate = 'VAGOS',
		  })
	   end)
	end
end)