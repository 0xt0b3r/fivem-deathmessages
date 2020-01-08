RegisterServerEvent("deathmessages:broadcastDeath")
RegisterServerEvent("deathmessages:broadcastMurder")
AddEventHandler("deathmessages:broadcastDeath", function(victimID)
	print("Someone died")
	TriggerClientEvent("deathmessages:notifyDeath",source, victimID)
end)

AddEventHandler("deathmessages:broadcastMurder", function(victimID, killerID, weapon, killerInVehicle)
	print("Someone was murdered")
	print("Weapon: " .. weapon)
	print("Pistol: " .. `weapon_pistol`)
	print("Shotgun: " .. `weapon_pumpshotgun`)
	print("Carbine Rifle: " .. `weapon_carbinerifle`)
	TriggerClientEvent("deathmessages:notifyMurder",source, victimID, killerID, weapon, killerInVehicle)
end)