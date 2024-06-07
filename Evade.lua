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
local AutoFarms = Window:AddTab("Farm")
local Gamee = Window:AddTab("Game")
local Configs = Window:AddTab("Settings")

local EvadeSector = Evade:AddLeftGroupbox("Character")
local Visuals = Evade:AddRightGroupbox("Visuals")
local Farms = AutoFarms:AddLeftGroupbox("Farms")
local FarmStats = AutoFarms:AddRightGroupbox("Stats")

local Gamesec = Gamee:AddRightGroupbox("Utils")
local World = Gamee:AddRightGroupbox("World")

getgenv().Settings = {
    moneyfarm = false,
    afkfarm = false,
    NoCameraShake = false,
    Downedplayeresp = false,
    AutoRespawn = false,
    TicketFarm = false,
    Speed = 1450,
    Jump = 3,
    reviveTime = 3,
    DownedColor = Color3.fromRGB(255,0,0),
    PlayerColor = Color3.fromRGB(255,170,0),

    stats = {
        TicketFarm = {
            earned = nil,
            duration = 0
        },

        TokenFarm = {
            earned = nil,
            duration = 0
        }

    }
}


--// because silder does not detect dotted values 

World:AddToggle("MyToggle",{Text='Full Bright',Default=false,function(Value)
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

World:AddToggle("MyToggle",{Text='No Camera Shake',Default=false,function(State)
    Settings.NoCameraShake = State
end})

Gamesec:AddToggle("MyToggle",{Text='Fast Revive',Default=false,function(State)
    if State then
        workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", Settings.reviveTime)
    end
end})

EvadeSector:AddToggle("MyToggle",{Text='Auto Respawn',Default=false,function(State)
    Settings.AutoRespawn = State
end})

EvadeSector:AddButton({Text='Respawn',Func=function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})


Farms:AddToggle("MyToggle",{Text='Money Farm',Default=false,function(State)
    Settings.moneyfarm = State
end})

Farms:AddToggle("MyToggle",{Text='AFK Farm',Default=false,function(State)
    Settings.afkfarm = State
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
Visuals:AddButton({
			Text = "Player Esp",
			Func = function()
				local c = workspace.CurrentCamera
				local ps = game:GetService("Players")
				local lp = ps.LocalPlayer
				local rs = game:GetService("RunService")
				local function getdistancefc(part)
					return (part.Position - c.CFrame.Position).Magnitude
				end
				local function esp(p, cr)
					local h = cr:WaitForChild("Humanoid")
					local hrp = cr:WaitForChild("HumanoidRootPart")
					local text = Drawing.new("Text")
					text.Visible = false
					text.Center = true
					text.Outline = true
					text.Font = 2
					text.Color = Color3.fromRGB(255, 255, 255)
					text.Size = 17
					local c1
					local c2
					local c3
					local function dc()
						text.Visible = false
						text:Remove()
						if c1 then
							c1:Disconnect()
							c1 = nil
						end
						if c2 then
							c2:Disconnect()
							c2 = nil
						end
						if c3 then
							c3:Disconnect()
							c3 = nil
						end
					end
					c2 =
						cr.AncestryChanged:Connect(
							function(_, parent)
								if not parent then
								dc()
							end
							end
						)
					c3 =
						h.HealthChanged:Connect(
							function(v)
								if (v <= 0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
								dc()
							end
							end
						)
					c1 =
						rs.RenderStepped:Connect(
							function()
								local hrp_pos, hrp_os = c:WorldToViewportPoint(hrp.Position)
								if hrp_os then
								text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
								text.Text = p.Name .. " (" .. tostring(math.floor(getdistancefc(hrp))) .. " m)"
								text.Visible = true
							else
								text.Visible = false
							end
							end
						)
				end
				local function p_added(p)
					if p.Character then
						esp(p, p.Character)
					end
					p.CharacterAdded:Connect(
						function(cr)
							esp(p, cr)
						end
					)
				end
				for i, p in next, ps:GetPlayers() do
					if p ~= lp then
						p_added(p)
					end
				end
				ps.PlayerAdded:Connect(p_added)
				
			end    
		})
 Visuals:AddToggle("MyToggle",{
			Text = "Bots tracers",
			Default = true,
			Callback = function(Value)
				getgenv().toggleespmpt = Value
			end    
		})
 getgenv().mptespcolour = color3.fromRGB(255,255,255)
local cam = workspace.CurrentCamera
		local rs = game:GetService'RunService'
 
		getgenv().toggleespmpt = true
		function esp(plr)
			if game:GetService'Players':GetPlayerFromCharacter(plr) == nil then
				local rat = Drawing.new("Line")
				rs.RenderStepped:Connect(function()
					if plr:FindFirstChild'HumanoidRootPart' then
						local vector,screen = cam:WorldToViewportPoint(plr.HumanoidRootPart.Position)
						if screen then
							rat.Visible = toggleespmpt
							rat.From = Vector2.new(cam.ViewportSize.X / 2,cam.ViewportSize.Y / 1)
							rat.To = Vector2.new(vector.X,vector.Y)
							rat.Color = getgenv().mptespcolour
							rat.Thickness = getgenv().mptespthickness
						else
							rat.Visible = false
						end
					else
						pcall(function()
							rat.Visible = false
						end)
					end
					if not plr:FindFirstChild'HumanoidRootPart' or not plr:FindFirstChild'HumanoidRootPart':IsDescendantOf(game:GetService'Workspace') then
						pcall(function()
							rat:Remove()
						end)
					end
				end)
			end
		end
 
		for i,v in pairs(game:GetService'Workspace'.Game.Players:GetChildren()) do
			esp(v)
		end
 
		game:GetService'Workspace'.Game.Players.ChildAdded:Connect(function(plr)
			esp(plr)
		end)

local TypeLabelC5 = FarmStats:AddLabel('Auto Farm Stats')
local DurationLabelC5 = FarmStats:AddLabel('Duration: 0')
local EarnedLabelC5 = FarmStats:AddLabel('Earned: 0')
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
