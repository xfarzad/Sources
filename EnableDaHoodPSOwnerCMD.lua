local username = "irllylovefatcats"
local target = "imlovinit212"
local keybind = "Q"

--[[

credits to : @ discord.gg/shhhh dev suley

! read !
you have to join first and execute when no one is in the server otherwise it won't work + it has to be ur own private server

1. put ur own user in username
2. put the person you wanna bring's user ( or you can open private server commands and click summon button )
3. choose a keybind ( when you click the keybind the person gets teleported to you )
4. execute


--]]


game:GetService("UserInputService").InputBegan:Connect(function(i, t)
	if not t and i.KeyCode == Enum.KeyCode[keybind:upper()] then
		game:GetService("ReplicatedStorage").MainEvent:FireServer("VIP_CMD", "Summon", game:GetService("Players")[target])
	end
end)


game:GetService("Players")[username].PlayerGui.MainScreenGui.VIPCMDS.Commands.PlayerList["Z:PlayerFrame"].TP.Visible = true
game:GetService("Players")[username].PlayerGui.MainScreenGui.VIPCMDS.Commands.PlayerList["Z:PlayerFrame"].Summon.Visible = true
