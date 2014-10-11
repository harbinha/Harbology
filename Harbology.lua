local Login_EventFrame = CreateFrame("Frame")

Login_EventFrame:RegisterEvent("PLAYER_LOGIN")

Login_EventFrame:SetScript("OnEvent", function(self,event,...) 
 	ChatFrame1:AddMessage(string.format('Welcome to WoW DEV environment - %s', UnitName("Player")))

 	local charName = UnitName("Player")
 	if not loginCount then
 		loginCount = 0
 		ChatFrame1:AddMessage(string.format('This is your first time logging on %s with Harbology installed', charName))
 	else
 		loginCount = loginCount + 1
 		ChatFrame1:AddMessage(string.format('This is your %d time logging into %s.', loginCount, charName))
    end
end)

