
local IsAnimated = false


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

--------------------- client parapluie bleu
RegisterNetEvent('esx_extraitems:umbrellablue')
AddEventHandler('esx_extraitems:umbrellablue', function()
	local playerPed = GetPlayerPed(-1)
	
	if not IsAnimated then	
		local prop_name = 'p_amb_brolly_01'
		IsAnimated = true 	
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)		
		RequestAnimDict('amb@code_human_wander_drinking@beer@male@base')
			while not HasAnimDictLoaded('amb@code_human_wander_drinking@beer@male@base') do
			Citizen.Wait(1)
			end			
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.10, 0, -0.001, 80.0, 150.0, 200.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "amb@code_human_wander_drinking@beer@male@base", "static", 3.5, -8, -1, 49, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then		
		IsAnimated = false
		ClearPedSecondaryTask(playerPed)
		DeleteObject(prop)
	end
end)

--------------------- client parapluie gris
RegisterNetEvent('esx_extraitems:umbrellagrey')
AddEventHandler('esx_extraitems:umbrellagrey', function()
	local playerPed = GetPlayerPed(-1)
	
	if not IsAnimated then  
	
		local prop_name = 'p_amb_brolly_01_s' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)		
		RequestAnimDict('amb@code_human_wander_drinking@beer@male@base')
			while not HasAnimDictLoaded('amb@code_human_wander_drinking@beer@male@base') do
			Citizen.Wait(1)
			end			
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.10, 0, -0.001, 80.0, 150.0, 200.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "amb@code_human_wander_drinking@beer@male@base", "static", 3.5, -8, -1, 49, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then		
		IsAnimated = false
		ClearPedSecondaryTask(playerPed)
		DeleteObject(prop)
	end
end)

--------------------- partie client valise tactic gris
RegisterNetEvent('esx_extraitems:handbagtacticgrey')
AddEventHandler('esx_extraitems:handbagtacticgrey', function()
    local playerPed = GetPlayerPed(-1)    
	if not IsAnimated then  
		
		local prop_name = 'prop_security_case_01' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
		RequestAnimDict('missheistdocksprep1hold_cellphone')
			while not HasAnimDictLoaded('missheistdocksprep1hold_cellphone') do
				Citizen.Wait(1)
			end
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.15, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "missheistdocksprep1hold_cellphone", "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then				
		IsAnimated = false
		DeleteObject(prop)
		ClearPedSecondaryTask(playerPed)
	end
end)  

--[[------------------- partie client valise tactic noir -- changer l'orientation
RegisterNetEvent('esx_extraitems:handbagtacticblack')
AddEventHandler('esx_extraitems:handbagtacticblack', function()
    local playerPed = GetPlayerPed(-1)
	
   	if not IsAnimated then  
		----------------
		local prop_name = 'prop_idol_case_02' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
		RequestAnimDict('missheistdocksprep1hold_cellphone')
			while not HasAnimDictLoaded('missheistdocksprep1hold_cellphone') do
				Citizen.Wait(1)
			end
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.15, 0, 0, 0, 180.0, 90.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "missheistdocksprep1hold_cellphone", "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then				
		IsAnimated = false
		DeleteObject(prop)
		ClearPedSecondaryTask(playerPed)
	end
end)  
--]]

--------------------- partie client Valise vacance tissu 
RegisterNetEvent('esx_extraitems:handbagholiday')
AddEventHandler('esx_extraitems:handbagholiday', function()
    local playerPed = GetPlayerPed(-1)
	
    
	if not IsAnimated then  
		
		local prop_name = 'prop_ld_suitcase_01' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
		RequestAnimDict('missheistdocksprep1hold_cellphone')
			while not HasAnimDictLoaded('missheistdocksprep1hold_cellphone') do
				Citizen.Wait(1)
			end
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.35, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "missheistdocksprep1hold_cellphone", "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then				
		IsAnimated = false
		DeleteObject(prop)
		ClearPedSecondaryTask(playerPed)
	end
end)  

--------------------- partie client Valise vacance resitance 
RegisterNetEvent('esx_extraitems:handbagholidayhard')
AddEventHandler('esx_extraitems:handbagholidayhard', function()
    local playerPed = GetPlayerPed(-1)	
    
	if not IsAnimated then		
		local prop_name = 'prop_ld_suitcase_02' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
		RequestAnimDict('missheistdocksprep1hold_cellphone')
			while not HasAnimDictLoaded('missheistdocksprep1hold_cellphone') do
				Citizen.Wait(1)
			end
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.35, 20, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "missheistdocksprep1hold_cellphone", "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then				
		IsAnimated = false
		DeleteObject(prop)
		ClearPedSecondaryTask(playerPed)
	end
end)  

--------------------- partie client valise avocat
RegisterNetEvent('esx_extraitems:handbag')
AddEventHandler('esx_extraitems:handbag', function()
    local playerPed = GetPlayerPed(-1)
    
	if not IsAnimated then  
	
		local prop_name = 'prop_ld_case_01' --
		IsAnimated = true  --		
		Citizen.CreateThread(function()
	        local x,y,z = table.unpack(GetEntityCoords(playerPed))
	        prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
		RequestAnimDict('missheistdocksprep1hold_cellphone')
			while not HasAnimDictLoaded('missheistdocksprep1hold_cellphone') do
				Citizen.Wait(1)
			end
			AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 57005), 0.15, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
			TaskPlayAnim(playerPed, "missheistdocksprep1hold_cellphone", "static", 1.0, -1, -1, 50, 0, 0, 0, 0)
		end)
		
	elseif IsAnimated then				
		IsAnimated = false
		DeleteObject(prop)
		ClearPedSecondaryTask(playerPed)
	end
end)  

