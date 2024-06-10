
local _L_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local _L_2 = _L_1:MakeWindow({
  Title = "YOU HUB | EVADE",
  SubTitle = "BY RECHEDMCVN",
  SaveFolder = "testando | redz lib v5.lua",
  SaveUiSize = Vector3.new(35,35)
})
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
function autodrink()
			while AutoDrink == true do
				local ohString1 = "Cola"
				game:GetService("ReplicatedStorage").Events.UseUsable:FireServer(ohString1)
				wait(6)
			end
end

local _L_3 = {
         Main = _L_2:MakeTab({"Main (🍒)", "cherry"}),
         Configs = _L_2:MakeTab({"Configs", "user"})
}
_L_1:SetTheme("Dark")

game.Lighting.FogEnd = 500
game.Lighting.Brightness = 10
local _L_6 = _L_3.Main:AddSlider({
  Name = "Brightness",
  Min = 1,
  Max = 10,
  Increase = 1,
  Description = "Độ Sáng",
  Default = 10,
  Callback = function(Brightness)
if _G.Brightness then
   	      game.Lighting.Brightness = Brightness
       end
end})
local _L_6 = _L_3.Main:AddSlider({
  Name = "No Fog",
  Min = 100,
  Max = 500,
  Increase = 1,
  Description = "Xoá Sương Mù",
  Default = 500,
  Callback = function(NoFog)
if _G.NoFog then
   	      game.Lighting.FogEnd = NoFog
       end
end})
local _L_7 = _L_3.Main:AddToggle({
  Name = "Toggle Brightness",
  Description = "Chỉnh Lại Cái Độ Sáng",
  Default = true,
   Callback = function(Brightness2)
_G.Brightness = Brightness2
end
})
local _L_7 = _L_3.Main:AddToggle({
  Name = "Toggle No Fog",
  Description = "Chỉnh Lại Cái Xoá Sương Mù",
  Default = true,
   Callback = function(NoFog2)
_G.NoFog = NoFog2
end
})
local _L_7 = _L_3.Main:AddToggle({
  Name = "Delete Global Shadows (Disable Shadow)",
  Description = "Xoá Bóng",
  Default = false,
  Callback = function(DGS)
game.Lighting.GlobalShadows = DGS
end})
local _L_7 = _L_3.Main:AddToggle({
  Name = "Hide Darkness Effect",
  Description = "Ẩn Hiệu Ứng Bóng Tối",
  Default = false,
  Callback = function(HDE)
if HDE then
game.Lighting.OutdoorAmbient = Color3.new(1,1,1)
else
game.Lighting.OutdoorAmbient = Color3.new(0,0,0)
end
end})
local _L_7 = _L_3.Main:AddToggle({
  Name = "No Shake Camera",
  Description = "Không lắc màn hình",
  Default = false,
  Callback = function(NSC)
if NSC then
Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(0,0,0) * CFrame.new(0,0,0)
else
Players.LocalPlayer.PlayerScripts.CameraShake.Value = CFrame.new(9,9,9) * CFrame.new(9,9,9)
			end				
		end})
local _L_7 = _L_3.Main:AddToggle({
  Name = "Fast Revive Players",
  Description = "Hồi Sinh Người Chơi Nhanh",
  Default = false,
  Callback = function(FRP)
if FRP then
        workspace.Game.Settings:SetAttribute("ReviveTime", 2.2)
    else
        workspace.Game.Settings:SetAttribute("ReviveTime", 3)
    end
end})
  _L_3.Main:AddButton({Name='Respawn',Description = "Hồi Sinh",function()
    game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
end})


_L_3.Main:AddButton({Name = "Jump No Colldown",Description = "Nhảy liên tục",function()
				local InfiniteJumpEnabled = true
				game:GetService("UserInputService").JumpRequest:connect(function()
					if InfiniteJumpEnabled then
						game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
					end
				end)
				
			end    
		})


_L_3.Configs:AddButton({"Dark Theme",Default=true, function()
  _L_1:SetTheme("Dark")
end})

_L_3.Configs:AddButton({"Darker Theme", function()
  _L_1:SetTheme("Darker")
end})

_L_3.Configs:AddButton({"Dark Purple", function()
  _L_1:SetTheme("Purple")
end})

local _L_9 = _L_3.Configs:AddToggle({
  Name = "Unlock FPS",
  Description = "Mở Khoá FPS",
  Default = false,
  Callback = function(FPS)
if FPS then
setfpscap(10000)
else
setfpscap(60)
end
end
})

















