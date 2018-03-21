RegisterNetEvent("simp:textsent")
AddEventHandler('simp:textsent', function(tPID, names2)
		SetNotificationTextEntry("STRING")
		AddTextComponentString("Your Message was sent!")
		SetNotificationMessage("CHAR_DEFAULT", "CHAR_DEFAULT", true, 1, "Message to: ".. names2 .." [".. tPID .."]", "")
		DrawNotification(false, true)
end)

RegisterNetEvent("simp:textmsg")
AddEventHandler('simp:textmsg', function(source, textmsg, names2, names3 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = textmsg
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names3
		SetNotificationTextEntry("STRING")
		AddTextComponentString(textmsg)
		SetNotificationMessage("CHAR_DEFAULT", "CHAR_DEFAULT", true, 1, "Message From: ".. names3 .." [".. source .."]", "")
		DrawNotification(false, true)
end)

RegisterNetEvent("simp:recovermessage")
AddEventHandler('simp:recovermessage', function()
		local textmsg = textData.lastPlayerMessage
		local ply = textData.lastPlayermessageRecieved
		local names3 = textData.lastMessagenames2
		SetNotificationTextEntry("STRING")
		AddTextComponentString(textmsg)
		SetNotificationMessage("CHAR_DEFAULT", "CHAR_DEFAULT", true, 1, "Message From: ".. names3 .." [" .. tostring(ply) .. "]", "")
		DrawNotification(false, true)
end)


RegisterNetEvent("simp:141text")
AddEventHandler("simp:141text", function(textmsg)
		SetNotificationTextEntry("STRING")
		AddTextComponentString(textmsg)
		SetNotificationMessage("CHAR_DEFAULT", "CHAR_DEFAULT", true, 1, "New Message:", "Blocked Number")
		DrawNotification(false, true)
end)

RegisterNetEvent("simp:141sent")
AddEventHandler("simp:141sent", function()
		SetNotificationTextEntry("STRING")
		AddTextComponentString("Your Message has been relayed Anonymously")
		SetNotificationMessage("CHAR_DEFAULT", "CHAR_DEFAULT", true, 1, "New Message:", "Blocked Number")
		DrawNotification(false, true)
end)