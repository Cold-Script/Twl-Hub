local Section = Tab:AddLeftGroupbox("Esp Item")
local Toggle = Section:AddToggle("Cesp",{
	Text = "Lock ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "Lock" and v:IsA("BasePart") then
					selection(v, "[Lock]", false, true,5)
wait(0.01)
if v.Name == "Door" and v:IsA("BasePart") then
					selection(v, "", false, true,5)
				end
				end
			end
			ClosetESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "Lock" and v:IsA("BasePart") then
						selection(v, "[Lock]", false, true,5)
wait(0.01)
if v.Name == "Door" and v:IsA("BasePart") then
					selection(v, "", false, true,5)
				end
					end
				end
			end)
		else
			ClosetESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_3" then
					v:Destroy()
				end
			end
		end
	end,
})
local Toggle = Section:AddToggle("Cesp",{
	Text = "Key ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
if v.Name == "KeyObtain" and v:IsA("Model") then
					selection(v, "", false, true,5)
				
				end
			end
			ClosetESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
if v.Name == "KeyObtain" and v:IsA("Model") then
					selection(v, "Key", false, true,5)
			
					end
				end
			end)
		else
			ClosetESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_3" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Section:AddToggle("Cesp",{
	Text = "Lockpick ESP",
	Default = false,
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
if v.Name == "Lockpick" and v:IsA("Model") then
					selection(v, "Lockpick", false, true,5)
				
				end
			end
			ClosetESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
if v.Name == "Lockpick" and v:IsA("Model") then
					selection(v, "Lockpick", false, true,5)
			
					end
				end
			end)
		else
			ClosetESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_3" then
					v:Destroy()
				end
			end
		end
	end,
})
