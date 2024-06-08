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

EvadeSector:AddToggle("MyToggle",{Text='Full Bright',Default=false,function(Value)
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
EvadeSector:AddToggle("MyToggle",{Text="Enable Field Of View Player",Default=false,Callback=function(v1)
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
--local TicketsLabelC5 = FarmStats:AddLabel('Total Tickets:'..localplayer:GetAttribute('Tickets'))

local FindAI = function()
    for _,v in pairs(WorkspacePlayers:GetChildren()) do
        if not Players:FindFirstChild(v.Name) then
            return v
        end
    end
end


local GetDownedPlr = function()
    for i,v in pairs(WorkspacePlayers:GetChildren()) do
        if v:GetAttribute("Downed") then
            return v
        end
    end
end

--Shitty Auto farm 🥶💀🤡💀🤡💀🤡
local revive = function()
    local downedplr = GetDownedPlr()
    if downedplr ~= nil and downedplr:FindFirstChild('HumanoidRootPart') then
        task.spawn(function()
            while task.wait() do
                if localplayer.Character then
                    workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
                    localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(downedplr:FindFirstChild('HumanoidRootPart').Position.X, downedplr:FindFirstChild('HumanoidRootPart').Position.Y + 3, downedplr:FindFirstChild('HumanoidRootPart').Position.Z)
                    task.wait()
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), false)
                    task.wait(4.5)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(downedplr), true)
                    break
                end
            end
        end)
    end
end

--Kiriot


local old
old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local Args = {...}
    local method = getnamecallmethod()
    if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
        return Settings.Speed, Settings.Jump 
    end
    return old(self,...)
end))

local formatNumber = (function(value) -- //Credits: https://devforum.roblox.com/t/formatting-a-currency-label-to-include-commas/413670/3
	value = tostring(value)
	return value:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

function Format(Int) -- // Credits: https://devforum.roblox.com/t/converting-secs-to-hsec/146352
	return string.format("%02i", Int)
end

function convertToHMS(Seconds)
	local Minutes = (Seconds - Seconds%60)/60
	Seconds = Seconds - Minutes*60
	local Hours = (Minutes - Minutes%60)/60
	Minutes = Minutes - Hours*60
	return Format(Hours).."H "..Format(Minutes).."M "..Format(Seconds)..'S'
end

task.spawn(function()
    while task.wait(1) do
        --if Settings.TicketFarm then
            --Settings.stats.TicketFarm.duration += 1
       -- end
        if Settings.moneyfarm then
            Settings.stats.TokenFarm.duration += 1
        end 
    end
end)

--local gettickets = localplayer:GetAttribute('Tickets')
local GetTokens = localplayer:GetAttribute('Tokens')

--localplayer:GetAttributeChangedSignal('Tickets'):Connect(function()
   -- local tickets = tostring(gettickets - localplayer:GetAttribute('Tickets'))
    --local cleanvalue = string.split(tickets, "-")
    --Settings.stats.TicketFarm.earned = cleanvalue[2]
--end)

localplayer:GetAttributeChangedSignal('Tokens'):Connect(function()
    local tokens = tostring(GetTokens - localplayer:GetAttribute('Tokens'))
    local cleanvalue = string.split(tokens, "-")
    print(cleanvalue[2])
    Settings.stats.TokenFarm.earned = cleanvalue[2]
end)

localplayer:GetAttributeChangedSignal('Tokens'):Connect(function()
    local tokens = tostring(GetTokens - localplayer:GetAttribute('Tokens'))
    local cleanvalue = string.split(tokens, "-")
    print(cleanvalue[2])
    Settings.stats.TokenFarm.earned = cleanvalue[2]
end)

task.spawn(function()
    while task.wait() do
        if Settings.TicketFarm then
            TypeLabelC5:Set('Ticket Farm')
            DurationLabelC5:Set('Duration:'..convertToHMS(Settings.stats.TicketFarm.duration))
            EarnedLabelC5:Set('Earned:'.. formatNumber(Settings.stats.TicketFarm.earned))
            TicketsLabelC5:Set('Total Tickets: '..localplayer:GetAttribute('Tickets'))

            if game.Players.LocalPlayer:GetAttribute('InMenu') ~= true and localplayer:GetAttribute('Dead') ~= true then
                for i,v in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
                    localplayer.Character.HumanoidRootPart.CFrame = CFrame.new(v:WaitForChild('HumanoidRootPart').Position)
                end
            else
                task.wait(2)
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            end
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(2)
            end
        end
    end
end)


task.spawn(function()
    while task.wait() do
        if Settings.AutoRespawn then
             if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
             end
        end

        if Settings.NoCameraShake then
            localplayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
        end
        if Settings.moneyfarm then
            TypeLabelC5:Set('Money Farm')
            DurationLabelC5:Set('Duration:'..convertToHMS(Settings.stats.TokenFarm.duration))
            EarnedLabelC5:Set('Earned:'.. formatNumber(Settings.stats.TokenFarm.earned))
            TicketsLabelC5:Set('Total Tokens: '..formatNumber(localplayer:GetAttribute('Tokens')))
            
            if localplayer:GetAttribute("InMenu") and localplayer:GetAttribute("Dead") ~= true then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
            end
            if localplayer.Character and localplayer.Character:GetAttribute("Downed") then
                game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
                task.wait(3)
            else
                revive()
                task.wait(1)
            end

        end
        if Settings.moneyfarm == false and Settings.afkfarm and localplayer.Character:FindFirstChild('HumanoidRootPart') ~= nil then
            localplayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(6007, 7005, 8005)
        end
    end
end)

--Infinite yield's Anti afk
local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(localplayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		localplayer.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
end
