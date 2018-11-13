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
