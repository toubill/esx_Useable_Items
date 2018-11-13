ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
---PARAPLUIE BLEU---
ESX.RegisterUsableItem('umbrellablue', function(source)  
	TriggerClientEvent('esx_extraitems:umbrellablue', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('umbrellablue', 1)  -- decommenter pour que l'items se supprime a chaque utilisation
end)
---PARAPLUIE GRIS---
ESX.RegisterUsableItem('umbrellagrey', function(source)  
	TriggerClientEvent('esx_extraitems:umbrellagrey', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('umbrellagrey', 1)  -- decommenter pour que l'items se supprime a chaque utilisation
end)
---Valise Tactic Gris---
ESX.RegisterUsableItem('handbagtacticgrey', function(source)   
	TriggerClientEvent('esx_extraitems:handbagtacticgrey', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('handbagtacticgrey', 1)   --- decommenter pour que l'items se supprime a chaque utilisation
end)
---Valise Tactic Noir---
ESX.RegisterUsableItem('handbagtacticblack', function(source)   
	TriggerClientEvent('esx_extraitems:handbagtacticblack', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('handbagtacticblack', 1)   --- decommenter pour que l'items se supprime a chaque utilisation
end)
---grosse valise vacance tissu---
ESX.RegisterUsableItem('handbagholiday', function(source)   
	TriggerClientEvent('esx_extraitems:handbagholiday', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('handbagholiday', 1)   --- decommenter pour que l'items se supprime a chaque utilisation
end)
---grosse Valise vacance resitance---
ESX.RegisterUsableItem('handbagholidayhard', function(source)   
	TriggerClientEvent('esx_extraitems:handbagholidayhard', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('handbagholidayhard', 1)   --- decommenter pour que l'items se supprime a chaque utilisation
end)
---SAC AVOCAT---
ESX.RegisterUsableItem('handbag', function(source)   
	TriggerClientEvent('esx_extraitems:handbag', source)
	local xPlayer  = ESX.GetPlayerFromId(source)
	--xPlayer.removeInventoryItem('handbag', 1)   --- decommenter pour que l'items se supprime a chaque utilisation
end)
---BONG---
ESX.RegisterUsableItem('bong', function(source)
local xPlayer  = ESX.GetPlayerFromId(source)

	if xPlayer.getInventoryItem('weed_pooch').count <= 0 then
		weedpooch = 0
	else
		weedpooch = 1
	end
			
	if xPlayer.getInventoryItem('pharma3').count <= 0 then
		weedmedicinal = 0
	else
		weedmedicinal = 1
	end
			
	if weedpooch == 0 and weedmedicinal == 0 then	
		TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas de ~g~weed ~w~ou de ~b~cannabis medicinal~w~ à consommer')
		return
	elseif 
		xPlayer.getInventoryItem('weed_pooch').count <= 1 and weedmedicinal == 0 then
		TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas de Weed~w~ à consommer')
		weedpooch = 0
		return
	elseif 
		xPlayer.getInventoryItem('pharma3').count <= 1 and weedpooch == 0 then
		TriggerClientEvent('esx:showNotification', source, 'Vous n\'avez ~r~pas de Weed Médicinal~w~ à consommer')
		weedmedicinal = 0
		return
	elseif (weedpooch == 1) then		
		TriggerClientEvent('esx_extraitem:bong', source)
		local xPlayer  = ESX.GetPlayerFromId(source)
		--xPlayer.removeInventoryItem('bong', 1) --- decommenter pour que l'items se supprime a chaque utilisation
		xPlayer.removeInventoryItem('weed_pooch', 1)
		TriggerClientEvent('esx_status:add', source, 'drug', 350000)
		TriggerClientEvent('esx:showNotification', source, '~g~Wow ! C\'est d\'l\'a bonne')
	elseif (weedmedicinal == 1) then
		TriggerClientEvent('esx_extraitem:bong', source)
		local xPlayer  = ESX.GetPlayerFromId(source)
		--xPlayer.removeInventoryItem('bong', 1) --- decommenter pour que l'items se supprime a chaque utilisation
		xPlayer.removeInventoryItem('pharma3', 1)
		TriggerClientEvent('esx_status:add', source, 'drug', 10000)
		TriggerClientEvent('esx:showNotification', source, '~g~Wow ! C\'est d\'l\'a bonne')
	end		
end)	



