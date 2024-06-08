local WorkspacePlayers = game:GetService("Workspace").Game.Players;
local Players = game:GetService('Players');
local localplayer = Players.LocalPlayer;
-- semicolon but cool :sunglasses:

local repo = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
	Title = 'YOU HUB | Evade',
	Center = true,
	AutoShow = true,
	Resizable = true,
	ShowCustomCursor = true,
	TabPadding = 8,
	MenuFadeTime = 0.2
})
local Evade = Window:AddTab("Main")

local EvadeSector = Evade:AddLeftGroupbox("All Feature")

--// because silder does not detect dotted values 

EvadeSector:AddToggle("MyToggle",{Text='FullBright',Default=false,function(Value)
if Value then
   	Game.Lighting.Brightness = 4
	Game.Lighting.FogEnd = 100000
	Game.Lighting.GlobalShadows = false
    Game.Lighting.ClockTime = 12
else
Game.Lighting.Brightness = 0.5
	Game.Lighting.FogEnd = 200
	Game.Lighting.GlobalShadows = true
    Game.Lighting.ClockTime = 12
end
end})
if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
end
EvadeSector:AddToggle("MyToggle",{Text='No Camera Shake',Default=false,function(State)
    Settings.NoCameraShake = State
end})

EvadeSector:AddToggle("MyToggle",{Text='Fast Revive',Default=false,function(State)
    if State then
        workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", Settings.reviveTime)
    end
end})



EvadeSector:AddToggle("MyToggle",{Text="Enable WalkSpeed Of Nextbots",Default=false,Callback=function(v1)
	if v1 then
		game.Players.LocalPlayers.Character.Humanoid.WalkSpeed = 35
	else
		game.Players.LocalPlayers.Character.Humanoid.WalkSpeed = 16
	end
end})
EvadeSector:AddToggle("MyToggle",{Text="Enable Added Zoom",Default=false,Callback=function(v1)
	if v1 then
		workspace.CurrentCamera.FieldOfView = 120
	else
		workspace.CurrentCamera.FieldOfView = 70
	end
end})
EvadeSector:AddButton({Text='Respawn',Func=function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})


EvadeSector:AddButton({
			Text = "Inf Jump",
			Func = function()
				local InfiniteJumpEnabled = true
				game:GetService("UserInputService").JumpRequest:connect(function()
					if InfiniteJumpEnabled then
						game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
					end
				end)
				
			end    
		})
EvadeSector:AddButton({
			Text = "Day",
			Func = function()
			Game.Lighting.ClockTime = 12
		end})
EvadeSector:AddButton({
			Text = "Night",
			Func = function()
			Game.Lighting.ClockTime = 24
		end})
