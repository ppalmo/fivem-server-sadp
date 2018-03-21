--Config
autoupdatever = true  -- automatically detect and fetch the download for the latest version of this script?
--End Config

--Startup
print("TextScript, Created By ToniMorton and RJRoss")
_version = "2.0"
print("Checking Version...")
PerformHttpRequest("https://simplicity-gaming.com/2w3dj19qh8e98192h19he9032.txt", function(err, rText, headers)
print("Your version: " .. _version )
print("Current version: " .. rText .. "\n")
end, "GET", "", {table = nil})
--End Startup

-- Eventhandlers
AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringsplit(msg, " ")
	if cm[1] == "/text" or cm[1] == "/txt" then
		CancelEvent()
			if tablelength(cm) > 1 then
			local tPID = tonumber(cm[2])
			local names2 = GetPlayerName(tPID)
			local names3 = GetPlayerName(source)
			local msgVar = {}
			local textmsg = ""
			for i=1, #cm do
				if i ~= 1 and i ~= 2 then
					textmsg = (textmsg .. " " .. tostring(cm[i]))
				end
			end		
			TriggerClientEvent('simp:textmsg', tPID, source, textmsg, names2, names3)
			TriggerClientEvent('simp:textsent', source, tPID, names2)
		end
	end	
	if cm[1] == "/re-read" or cm[1] == "/reread" or cm[1] == "/rerd" then
		CancelEvent()
	    TriggerClientEvent('simp:recovermessage', source)
	end
end)

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/141" then
		CancelEvent()
			TriggerClientEvent("simp:141text", sm[2], string.sub(msg,8))
			TriggerClientEvent("simp:141sent", source)
	end
end)
--end Eventhandlers

--functions
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end
--end Functions

--AutoUpdater
if autoupdatever == true then
PerformHttpRequest("https://simplicity-gaming.com/2w3dj19qh8e98192h19he9032.txt", function(err, rText, headers)
		if rText > _version then
			print("\n\nOutdated Version!\nThe download for the latest version of TextScript will now be opened!\nPlease install the new version!")
			os.execute("start https://simplicity-gaming.com/releases/files/textscript.zip")
		elseif _version > rText then
			print("\n\nUnknown Version!\nThe download for the latest version of TextScript will now be opened!\nPlease install the new version!")
			os.execute("start https://simplicity-gaming.com/releases/files/textscript.zip")
		else
			print("TextScript is OK\n")
		end
end, "GET", "", {table = nil})
else
print("Automatic updates are disabled. Please ensure your version matches the current version manually.")
end
--End AutoUpdater