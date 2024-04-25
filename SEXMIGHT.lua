game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v)
    if not _G.IncreasedDistance then return end
    if v.IsA(v,"ProximityPrompt") then
       if _G.IncreasedDistance then
           v.MaxActivationDistance *= _G.IncreasedDistance and 2 or 0.5
       end
    end
end)
local repo = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'

local v0 = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local v1 = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local v2 = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local version = 1,8
local LIX = v0:CreateWindow({
    Title = "lolColdX - (v2.1.2) [BETA]",
    Center = true,
    AutoShow = true,
    TabPadding = 5.5,
    MenuFadeTime = 0,
    Size = Vector2.new(450, 200)
})
local v10={"RushMoving","AmbushMoving","Snare","A60","A120","SeekMoving","JeffTheKiller","Eyes"};local v11={"Candle","Crucifix","SkeletonKey","Vitamins","Lockpick","Lighter","Flashlight"};local v12=game.Players.LocalPlayer;local v13=v12.Character or v12.CharacterAdded:Wait() ;local v14=v13:FindFirstChildOfClass("Humanoid") or v13:WaitForChild("Humanoid") ;if  not fireproximityprompt then local v226=Instance.new("Message",workspace);v226.Text="you have fireproximityprompt function bro get better executor";task.wait(12 -6 );v226:Destroy();error("no prox");end function esp(v63,v64,v65,v66)local v67=0 -0 ;local v68;local v69;local v70;local v71;while true do if (v67==(1 + 2)) then if (v65 and v66) then local v431=1690 -(1121 + 569) ;local v432;local v433;while true do if (v431==2) then v432.Size=UDim2.new(214 -(22 + 192) ,691 -(483 + 200) ,0,8);v432.Position=UDim2.new(1463.5 -(1404 + 59) ,0 -0 ,0.5,0 -0 );Instance.new("UICorner",v432).CornerRadius=UDim.new(1,765 -(468 + 297) );Instance.new("UIStroke",v432);v431=565 -(334 + 228) ;end if (v431==3) then v433=Instance.new("TextLabel",v69);v433.AnchorPoint=Vector2.new(0.5 -0 ,0.5 -0 );v433.BackgroundTransparency=1 -0 ;v433.BackgroundColor3=v64;v431=2 + 2 ;end if (5==v431) then v433.FontSize=Enum.FontSize.Size10;v433.Text=v66;Instance.new("UIStroke",v433);task.spawn(function()while v69 do if ((v69.Adornee==nil) or  not v69.Adornee:IsDescendantOf(workspace)) then local v882=236 -(141 + 95) ;while true do if (v882==(0 + 0)) then v69.Enabled=false;v69.Adornee=nil;v882=1;end if (v882==1) then v69:Destroy();break;end end end task.wait();end end);break;end if (v431==4) then v433.TextColor3=v64;v433.Size=UDim2.new(2 -1 ,0 -0 ,0 + 0 ,136 -86 );v433.Position=UDim2.new(0.5,0,0.6,0);v433.Font=Enum.Font.Gotham;v431=4 + 1 ;end if (1==v431) then v69.MaxDistance=1042 + 958 ;v432=Instance.new("Frame",v69);v432.AnchorPoint=Vector2.new(0.5 -0 ,0.5);v432.BackgroundColor3=v64;v431=2 + 0 ;end if ((163 -(92 + 71))==v431) then v69=Instance.new("BillboardGui",game.CoreGui);v69.AlwaysOnTop=true;v69.Size=UDim2.new(0,400,0 + 0 ,168 -68 );v69.Adornee=v65;v431=766 -(574 + 191) ;end end end v71={};v67=4 + 0 ;end if ((9 -5)==v67) then v71.delete=function()for v434,v435 in pairs(v70) do local v436=0 + 0 ;while true do if (v436==(849 -(254 + 595))) then v435.Adornee=nil;v435.Visible=false;v436=127 -(55 + 71) ;end if (v436==1) then v435:Destroy();break;end end end if v69 then local v505=0 -0 ;while true do if (v505==(1791 -(573 + 1217))) then v69:Destroy();break;end if (v505==0) then v69.Enabled=false;v69.Adornee=nil;v505=2 -1 ;end end end end;return v71;end if (v67==(1 + 1)) then for v363,v364 in pairs(v68) do if v364:IsA("BasePart") then table.insert(v70,box);task.spawn(function()while box do local v704=0 -0 ;while true do if (v704==(939 -(714 + 225))) then if ((box.Adornee==nil) or  not box.Adornee:IsDescendantOf(workspace)) then box.Adornee=nil;box.Visible=false;box:Destroy();end task.wait();break;end end end end);end end function hightlightoutboi(v365,v366)local v367;if v366:FindFirstChildOfClass("Highlight") then v367=v366:FindFirstChildOfClass("Highlight");v367.OutlineColor=v365;v367.OutlineTransparency=0 -0 ;v367.FillColor=v365;v367.FillTransparency=0.5 -0 ;else local v510=0 + 0 ;while true do if (v510==(2 -0)) then v367.FillTransparency=806.5 -(118 + 688) ;v367.OutlineColor=v365;v510=51 -(25 + 23) ;end if (v510==(0 + 0)) then v367=Instance.new("Highlight",v366);v367.Enabled=true;v510=1887 -(927 + 959) ;end if (v510==(3 -2)) then v367.Name="Esphihihi";v367.FillColor=v365;v510=734 -(16 + 716) ;end if (v510==(5 -2)) then v367.OutlineTransparency=0;break;end end end local v368={};v368.delete=function()v367:Destroy();end;return v368;end v67=100 -(11 + 86) ;end if (v67==(2 -1)) then v69=nil;v70={};v67=287 -(175 + 110) ;end if (v67==(0 -0)) then v68=nil;if (typeof(v63)=="Instance") then if v63:IsA("Model") then v68=v63:GetChildren();elseif v63:IsA("BasePart") then v68={v63,table.unpack(v63:GetChildren())};end elseif (typeof(v63)=="table") then v68=v63;end v67=1797 -(503 + 1293) ;end end end local v15=game.ReplicatedStorage:WaitForChild("EntityInfo");function message(v72)local v73=0 -0 ;local v74;while true do if (v73==1) then task.wait(4 + 1 );v74:Destroy();break;end if (v73==0) then v74=Instance.new("Message",workspace);v74.Text=tostring(v72);v73=1;end end end local v16={espdoors=false,espkeys=false,espitems=false,espbooks=false,esprush=false,espchest=false,esplocker=false,esphumans=false,espgold=false,goldespvalue=1061 -(810 + 251) ,hintrush=false,hintrushhee=false,light=false,instapp=false,noseek=false,nogates=false,nopuzzle=false,noa90=false,noskeledoors=false,noseekarmsfire=false,noscreech=false,nodupe=false,getcode=false,getcodet=false,roomsnolock=false,draweraura=false,autorooms=false,itemsaura=false,autopulllever=false,bookcollecter=false,breakercollecter=false};local v17={table.unpack(v16)};local v18={doors={},keys={},items={},books={},entity={},chests={},lockers={},people={},gold={}};local v19=CFrame.new;local v20=game:GetService("ReplicatedStorage").GameData.LatestRoom;local v21=game:GetService("ReplicatedStorage").GameData.ChaseStart;local v22;v22=hookmetamethod(game,"__namecall",function(v75,...)local v76=0 + 0 ;local v77;local v78;while true do if (v76==(0 + 0)) then v77={...};v78=getnamecallmethod();v76=534 -(43 + 490) ;end if (v76==(734 -(711 + 22))) then if ((tostring(v75)=="Screech") and (v78=="FireServer") and getgenv().avoidsc) then local v437=0;while true do if (v437==(0 -0)) then v77[860 -(240 + 619) ]=true;return v22(v75,unpack(v77));end end end if ((tostring(v75)=="ClutchHeartbeat") and (v78=="FireServer") and getgenv().winhb) then v77[2]=true;return v22(v75,unpack(v77));end v76=1 + 1 ;end if (v76==(2 -0)) then return v22(v75,...);end end end);workspace.ChildAdded:Connect(function(v79)task.wait();if ((v79.Name=="RushMoving") or (v79.Name=="AmbushMoving")) then while workspace:FindFirstChild(v79.Name) and getgenv().hxde  do task.wait();part=v79:WaitForChild("RushNew");game.Players.LocalPlayer.Character.Collision.CFrame=CFrame.new(part.Position + Vector3.new(0 + 0 ,1819 -(1344 + 400) ,0) );end end end);
local v16={espdoors=false,espkeys=false,espitems=false,espbooks=false,esprush=false,espchest=false,esplocker=false,esphumans=false,espgold=false,goldespvalue=1061 -(810 + 251) ,hintrush=false,hintrushhee=false,light=false,instapp=false,noseek=false,nogates=false,nopuzzle=false,noa90=false,noskeledoors=false,noseekarmsfire=false,noscreech=false,nodupe=false,getcode=false,getcodet=false,roomsnolock=false,draweraura=false,autorooms=false,itemsaura=false,autopulllever=false,bookcollecter=false,breakercollecter=false};local v17={table.unpack(v16)};local v18={doors={},keys={},items={},books={},entity={},chests={},lockers={},people={},gold={}}
-- Tab
local Tab = LIX:AddTab("Main")
local Tab2 = LIX:AddTab("Players")
local Tab3 = LIX:AddTab("Cheat")
local Tab4 = LIX:AddTab("Troll")
local Tab5 = LIX:AddTab("Soon...")
local Section = Tab:AddLeftGroupbox("Auto Loot")
local Section2 = Tab:AddRightGroupbox("Event Notifing")
Section2:AddToggle("MyToggle",{Text="Event",Default=false,Tooltip="Enable Event Notify",Callback=function(v163)v16.hintrush=v163;if v163 then local v301=0 + 0 ;local v302;while true do if (v301==(1317 -(486 + 831))) then v302=nil;v302=workspace.ChildAdded:Connect(function(v596)if table.find(v10,v596.Name) then repeat task.wait();until (v12:DistanceFromCharacter(v596:GetPivot().Position)<1000) or  not v596:IsDescendantOf(workspace)  if v596:IsDescendantOf(workspace) then if (v596.Name=="RushMoving") then v0:Notify("[Event Notifier] : Rush Is Coming Find Hide Spot");local v913=Instance.new("Sound");v913.Parent=game.SoundService;v913.SoundId="rbxassetid://4590657391";v913.Volume=5;v913.PlayOnRemove=true;v913:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Rush "   .. _G.kuychatez );end elseif (v596.Name=="AmbushMoving") then v0:Notify("[Event Notifier] : Ambush Is Coming Find Hide Spot");local v964=Instance.new("Sound");v964.Parent=game.SoundService;v964.SoundId="rbxassetid://4590657391";v964.Volume=12 -7 ;v964.PlayOnRemove=true;v964:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Ambush "   .. _G.kuychatez );end elseif (v596.Name=="SeekMoving") then v0:Notify("[Event Notifier] : Seek Chase GoodLuck");local v1023=Instance.new("Sound");v1023.Parent=game.SoundService;v1023.SoundId="rbxassetid://4590657391";v1023.Volume=17 -12 ;v1023.PlayOnRemove=true;v1023:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Seek Chase GoodLuck");end elseif (v596.Name=="A60") then local v1044=0 + 0 ;local v1045;while true do if (v1044==3) then v1045:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("A60 "   .. _G.kuychatez );end break;end if (v1044==(6 -4)) then v1045.Volume=1268 -(668 + 595) ;v1045.PlayOnRemove=true;v1044=3 + 0 ;end if (v1044==(0 + 0)) then v0:Notify("[Event Notifier] : A60 Is Coming Find Locker");v1045=Instance.new("Sound");v1044=1;end if (v1044==1) then v1045.Parent=game.SoundService;v1045.SoundId="rbxassetid://4590657391";v1044=2;end end elseif (v596.Name=="A120") then local v1060=0 -0 ;local v1061;while true do if (v1060==(293 -(23 + 267))) then v1061:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("A120 "   .. _G.kuychatez );end break;end if (v1060==0) then v0:Notify("[Event Notifier] : A120 Is Coming Find Locker");v1061=Instance.new("Sound");v1060=1945 -(1129 + 815) ;end if (v1060==(389 -(371 + 16))) then v1061.Volume=1755 -(1326 + 424) ;v1061.PlayOnRemove=true;v1060=3;end if (v1060==(1 -0)) then v1061.Parent=game.SoundService;v1061.SoundId="rbxassetid://4590657391";v1060=2;end end elseif (v596.Name=="JeffTheKiller") then local v1083=0 -0 ;local v1084;while true do if (v1083==1) then v1084.Parent=game.SoundService;v1084.SoundId="rbxassetid://4590657391";v1083=120 -(88 + 30) ;end if (v1083==(773 -(720 + 51))) then v1084.Volume=11 -6 ;v1084.PlayOnRemove=true;v1083=1779 -(421 + 1355) ;end if (v1083==(4 -1)) then v1084:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Jeff The Killer Spawn In Next Door Be Careful");end break;end if (v1083==0) then v0:Notify("[Event Notifier] : Jeff The Killer Spawn In Next Door Be Careful");v1084=Instance.new("Sound");v1083=1 + 0 ;end end elseif (v596.Name=="BackdoorRush") then v0:Notify("[Event Notifier] : Rush Spawn Hide!");local v1023=Instance.new("Sound");v1023.Parent=game.SoundService;v1023.SoundId="rbxassetid://4590657391";v1023.Volume=17 -12 ;v1023.PlayOnRemove=true;v1023:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Rush Spawn Hide!");end elseif (v596.Name=="BackdoorLookman") then v0:Notify("[Event Notifier] : Lookman spawn!");local v1023=Instance.new("Sound");v1023.Parent=game.SoundService;v1023.SoundId="rbxassetid://4590657391";v1023.Volume=17 -12 ;v1023.PlayOnRemove=true;v1023:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Lookman!");end elseif (v596.Name=="Eyes") then local v1106=1083 -(286 + 797) ;local v1107;while true do if (v1106==3) then v1107:Destroy();if (_G.chat==true) then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Eyes Spawn Do not Look At him");end break;end if (v1106==1) then v1107.Parent=game.SoundService;v1107.SoundId="rbxassetid://4590657391";v1106=2;end if (2==v1106) then v1107.Volume=18 -13 ;v1107.PlayOnRemove=true;v1106=4 -1 ;end if (v1106==(439 -(397 + 42))) then v0:Notify("[Event Notifier] : Eyes Spawn Do not Look At Him");v1107=Instance.new("Sound");v1106=1 + 0 ;end end end end end end);v301=801 -(24 + 776) ;end if (v301==(1 -0)) then repeat task.wait();until  not v16.hintrush v302:Disconnect();break;end end end end});Section2:AddToggle("MyToggle",{Text="Chat Notify",Default=false,Tooltip="Chat Notify",Callback=function(v166)_G.chat=v166;end});Section:AddToggle("MyToggle",{Text="Auto Item",Default=false,Tooltip="Auto Pick Item And Keys",Callback=function(v280)local v281=0;while true do if (0==v281) then v16.itemsaura=v280;if v280 then local function v639(v748)local v749=0 -0 ;local v750;local v751;while true do if ((3 -1)==v749) then for v886,v887 in pairs(v748:GetDescendants()) do task.spawn(function()v750(v887);end);end 
task.spawn(function()repeat task.wait();until  not v16.itemsaura v751:Disconnect();end);break;end if ((1881 -(446 + 1434))==v749) then v751=nil;v751=v748.DescendantAdded:Connect(function(v888)v750(v888);end);v749=1285 -(1040 + 243) ;end if (v749==(0 -0)) then v750=nil;function v750(v889)task.wait();if v889:IsA("Model") then local v957=1847 -(559 + 1288) ;while true do if (v957==(1931 -(609 + 1322))) then task.wait();if (v889.Name=="PickupItem") then local v1048=0;local v1049;local v1050;while true do if (1==v1048) then v1050=454 -(13 + 441) ;task.spawn(function()repeat local v1103=0 -0 ;local v1104;while true do if (1==v1103) then pcall(function()local v1137=0;local v1138;local v1139;while true do if (0==v1137) then v1138,v1139=pcall(function()v1104=v12:DistanceFromCharacter(v889.PrimaryPart.Position)<=(31 -19) ;end);if v1139 then local v1154=0 -0 ;local v1155;while true do if (v1154==(0 + 0)) then v1155=nil;for v1170,v1171 in pairs(v1171:GetChildren()) do local v1172=pcall(function()local v1178=v1171['Position'];end);if v1172 then v1155=v1171;break;end end v1154=3 -2 ;end if (v1154==1) then v1104=v12:DistanceFromCharacter(v1155.Position)<=(5 + 7) ;break;end end end break;end end end);if v1104 then fireproximityprompt(v1049);v1050+=1 end break;end if (v1103==0) then task.wait(0.1);v1104=false;v1103=1;end end until  not v889:IsDescendantOf(workspace) or  not v1049:IsDescendantOf(workspace) or  not v16.itemsaura or (v1050>(9 + 11))  end);break;end if (v1048==0) then if ((game:GetService("ReplicatedStorage").GameData.LatestRoom.Value==(151 -100)) or (game:GetService("ReplicatedStorage").GameData.LatestRoom.Value==(29 + 23))) then return;end v1049=v889:WaitForChild("ModulePrompt");v1048=1 -0 ;end end elseif (v889:GetAttribute("Pickup") or v889:GetAttribute("PropType")) then if ((game:GetService("ReplicatedStorage").GameData.LatestRoom.Value==51) or (game:GetService("ReplicatedStorage").GameData.LatestRoom.Value==(35 + 17))) then return;end local v1063=v889:WaitForChild("ModulePrompt",2 + 0 );if (v1063==nil) then local v1085=0;while true do if (v1085==(0 + 0)) then v1063=v889:FindFirstChildWhichIsA("ProximityPrompt");if (v1063==nil) then for v1143,v1144 in pairs(v889:GetDescendants()) do if v1144:IsA("ProximityPrompt") then v1063=v1144;break;end end end break;end end end task.spawn(function()repeat local v1086=0;local v1087;while true do if (v1086==(0 + 0)) then task.wait(0.1 + 0 );v1087=false;v1086=1;end if (v1086==1) then pcall(function()local v1127=0;local v1128;local v1129;while true do if (v1127==(433 -(153 + 280))) then v1128,v1129=pcall(function()v1087=v12:DistanceFromCharacter(v889.PrimaryPart.Position)<=12 ;end);if v1129 then local v1153;for v1156,v1157 in pairs(v1157:GetChildren()) do local v1158=pcall(function()local v1163=v1157['Position'];end);if v1158 then v1153=v1157;break;end end v1087=v12:DistanceFromCharacter(v1153.Position)<=(34 -22) ;end break;end end end);if v1087 then fireproximityprompt(v1063);end break;end end until  not v889:IsDescendantOf(workspace) or  not v1063:IsDescendantOf(workspace) or  not v16.itemsaura  end);elseif (v889.Name=="Green_Herb") then local v1088=0;local v1089;while true do if (v1088==(0 + 0)) then v1089=v889:WaitForChild("Plant");if v1089 then local v1140=0 + 0 ;local v1141;local v1142;while true do if (v1140==(1 + 0)) then task.spawn(function()repeat local v1159=0 + 0 ;local v1160;while true do if (v1159==(1 + 0)) then pcall(function()local v1173=0 -0 ;local v1174;local v1175;while true do if (v1173==(0 + 0)) then v1174,v1175=pcall(function()v1160=v12:DistanceFromCharacter(v889.PrimaryPart.Position)<=(679 -(89 + 578)) ;end);if v1175 then local v1183;for v1184,v1185 in pairs(v1185:GetChildren()) do local v1186=pcall(function()local v1187=v1185['Position'];end);if v1186 then v1183=v1185;break;end end v1160=v12:DistanceFromCharacter(v1183.Position)<=(9 + 3) ;end break;end end end);if v1160 then fireproximityprompt(v1141);v1142+=(1 -0) end break;end if (v1159==(1049 -(572 + 477))) then task.wait(0.1 + 0 );v1160=false;v1159=1;end end until v1141:GetAttribute("Interactions") or  not v16.draweraura or (v1142>(22 + 13))  end);break;end if (v1140==(0 + 0)) then v1141=v1089:WaitForChild("HerbPrompt");v1142=0;v1140=87 -(84 + 2) ;end end end break;end end elseif ((v889.Name=="KeyObtain") or (v889.Name=="ElectricalKeyObtain")) then local v1108=v889:WaitForChild("ModulePrompt");local v1109=v1108:GetAttribute("Interactions");if  not v1109 then task.spawn(function()repeat local v1145=0;local v1146;while true do if (v1145==(0 -0)) then task.wait(0.1 + 0 );v1146=false;v1145=843 -(497 + 345) ;end if (v1145==(1 + 0)) then pcall(function()local v1161,v1162=pcall(function()v1146=v12:DistanceFromCharacter(v889.PrimaryPart.Position)<=14 ;end);if v1162 then local v1164;for v1167,v1168 in pairs(v1168:GetChildren()) do local v1169=pcall(function()local v1176=v1168['Position'];end);if v1169 then v1164=v1168;break;end end v1146=v12:DistanceFromCharacter(v1164.Position)<=(3 + 11) ;end end);if v1146 then fireproximityprompt(v1108);end break;end end until v1108:GetAttribute("Interactions") or  not v16.draweraura  end);end elseif (v889.Name=="RolltopContainer") then local v1130=v889:WaitForChild("ActivateEventPrompt");local v1131=v1130:GetAttribute("Interactions");if  not v1131 then task.spawn(function()repeat local v1151=1333 -(605 + 728) ;local v1152;while true do if ((0 + 0)==v1151) then task.wait(0.1 -0 );v1152=false;v1151=1 + 0 ;end if (v1151==(3 -2)) then pcall(function()local v1165,v1166=pcall(function()v1152=v12:DistanceFromCharacter(v889.PrimaryPart.Position)<=12 ;end);if v1166 then local v1177;for v1179,v1180 in pairs(v1180:GetChildren()) do local v1181=pcall(function()local v1182=v1180['Position'];end);if v1181 then v1177=v1180;break;end end v1152=v12:DistanceFromCharacter(v1177.Position)<=(11 + 1) ;end end);if v1152 then fireproximityprompt(v1130);end break;end end until v1130:GetAttribute("Interactions") or  not v16.itemsaura  end);end end break;end end end end v749=2 -1 ;end end end local v640;v640=workspace.CurrentRooms.ChildAdded:Connect(function(v752)v639(v752);end);for v753,v754 in pairs(workspace.CurrentRooms:GetChildren()) do if v754:FindFirstChild("Assets") then v639(v754);end end v639(workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]);repeat task.wait();until  not v16.itemsaura v640:Disconnect();end break;end end end})
Section:AddToggle("MyToggle",{Text="Auto Gold",Default=false,Tooltip="Auto Loot",Callback=function(v99)v16.draweraura=v99;if v99 then local function v266(v317)local function v318(v377)if v377:IsA("Model") then if (v377.Name=="DrawerContainer") then local v728=0 + 0 ;local v729;while true do if (v728==(1433 -(797 + 636))) then v729=v377:WaitForChild("Knobs");if v729 then local v935=v729:WaitForChild("ActivateEventPrompt");local v936=v935:GetAttribute("Interactions");if  not v936 then task.spawn(function()repeat task.wait(0.1 -0 );if (v12:DistanceFromCharacter(v729.Position)<=12) then fireproximityprompt(v935);end until v935:GetAttribute("Interactions") or  not v16.draweraura  end);end end break;end end elseif (v377.Name=="GoldPile") then local v824=v377:WaitForChild("LootPrompt");local v825=v824:GetAttribute("Interactions");if  not v825 then task.spawn(function()repeat task.wait(0.1);if (v12:DistanceFromCharacter(v377.PrimaryPart.Position)<=(1631 -(1427 + 192))) then fireproximityprompt(v824);end until v824:GetAttribute("Interactions") or  not v16.draweraura  end);end elseif (v377.Name:sub(1,3 + 5 )=="ChestBox") then local v883=v377:WaitForChild("ActivateEventPrompt");local v884=v883:GetAttribute("Interactions");if  not v884 then task.spawn(function()repeat local v1011=0 -0 ;while true do if (v1011==(0 + 0)) then task.wait(0.1 + 0 );if (v12:DistanceFromCharacter(v377.PrimaryPart.Position)<=(338 -(192 + 134))) then fireproximityprompt(v883);end break;end end until v883:GetAttribute("Interactions") or  not v16.draweraura  end);end elseif (v377.Name=="RolltopContainer") then local v954=1276 -(316 + 960) ;local v955;local v956;while true do if (v954==(0 + 0)) then v955=v377:WaitForChild("ActivateEventPrompt");v956=v955:GetAttribute("Interactions");v954=1;end if (v954==(1 + 0)) then if  not v956 then task.spawn(function()repeat local v1062=0 + 0 ;while true do if (v1062==(0 -0)) then task.wait(0.1);if (v12:DistanceFromCharacter(v377.PrimaryPart.Position)<=(563 -(83 + 468))) then fireproximityprompt(v955);end break;end end until v955:GetAttribute("Interactions") or  not v16.draweraura  end);end break;end end end end end local v319;v319=v317.DescendantAdded:Connect(function(v378)v318(v378);end);for v379,v380 in pairs(v317:GetDescendants()) do v318(v380);end task.spawn(function()local v381=1806 -(1202 + 604) ;while true do if (v381==(0 -0)) then repeat task.wait();until  not v16.draweraura v319:Disconnect();break;end end end);end local v267;v267=workspace.CurrentRooms.ChildAdded:Connect(function(v320)v266(v320);end);for v321,v322 in pairs(workspace.CurrentRooms:GetChildren()) do if v322:FindFirstChild("Assets") then v266(v322);end end repeat task.wait();until  not v16.draweraura v267:Disconnect();end end});
local Section3 = Tab:AddLeftGroupbox("Misc")
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()if (_G.ClosetExitFix and (game.Players.LocalPlayer.Character:GetAttribute("Hiding")==true)) then game:GetService("ReplicatedStorage").EntityInfo.CamLock:FireServer();end end);Section3:AddToggle("MyToggle",{Text="Closet Exit Fix",Default=false,Tooltip="Closet Exit Fast",Callback=function(v104)_G.ClosetExitFix=v104;end});Section3:AddToggle("MyToggle",{Text="Reach Interact",Default=false,Tooltip="Press E Far",Callback=function(v93)_G.IncreasedDistance=v93;for v228,v229 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if v229:IsA("ProximityPrompt") then v229.MaxActivationDistance=7 + 8 ;end end end});game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.IncreasedDoors then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door").ClientOpen:FireServer();end end);end);Section3:AddToggle("MyToggle",{Text="Reach Doors",Default=false,Tooltip="Doors Opening Far",Callback=function(v103)_G.IncreasedDoors=v103;end})game:GetService("Workspace").CurrentRooms.DescendantAdded:Connect(function(v94)if  not _G.InteractNoclip then return;end if v94.IsA(v94,"ProximityPrompt") then if _G.InteractNoclip then v94.RequiresLineOfSight=false;end end end);Section3:AddToggle("MyToggle",{Text="Noclip Interact",Default=false,Tooltip="Interact Noclip",Callback=function(v95)local v96=0 + 0 ;while true do if (v96==(0 + 0)) then _G.InteractNoclip=v95;if (_G.InteractNoclip==false) then for v521,v522 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if v522:IsA("ProximityPrompt") then v522.RequiresLineOfSight=true;end end elseif (_G.InteractNoclip==true) then for v726,v727 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if v727:IsA("ProximityPrompt") then v727.RequiresLineOfSight=false;end end end break;end end end});game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.NoluckNoob then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:FindFirstChild("RoomsDoor_Entrance") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("RoomsDoor_Entrance").Chain1:Destroy();game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("RoomsDoor_Entrance").Chain2:Destroy();game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("RoomsDoor_Entrance").Model:Destroy();game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("RoomsDoor_Entrance").SkullLock:Destroy();game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("RoomsDoor_Entrance").Door.EnterPrompt.Enabled=true;end end end);end);Section3:AddToggle("MyToggle",{Text="No A-000 lock",Default=false,Tooltip="A-000 No lock",Callback=function(v101)_G.NoluckNoob=v101;end});Section3:AddToggle("MyToggle",{Text="No Skeleton Door",Default=false,Tooltip="Remove Skeleton Door",Callback=function(v113)v16.noskeledoors=v113;if v113 then local v276=0 + 0 ;local v277;while true do if ((0 -0)==v276) then v277=nil;v277=workspace.CurrentRooms.ChildAdded:Connect(function(v532)local v533=v532:WaitForChild("Wax_Door",2 + 0 );if v533 then v533.Door.Transparency=772 -(326 + 445) ;v533.SkullLock.Transparency=1;v533.Door.CanCollide=false;v533.SkullLock.CanCollide=false;end end);v276=4 -3 ;end if (v276==(4 -2)) then v277:Disconnect();break;end if ((2 -1)==v276) then spawn(function()local v534=workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Wax_Door",2);if v534 then v534.Door.Transparency=712 -(530 + 181) ;v534.SkullLock.Transparency=1;v534.Door.CanCollide=false;v534.SkullLock.CanCollide=false;end end);repeat task.wait();until  not v16.noskeledoors v276=2;end end end end});Section3:AddToggle("MyToggle",{Text="No Gate",Default=false,Tooltip="Remove Gate Doors",Callback=function(v115)v16.nogates=v115;if v115 then spawn(function()for v390,v391 in pairs(workspace.CurrentRooms:GetChildren()) do local v392=0;local v393;while true do if ((881 -(614 + 267))==v392) then v393=v391:WaitForChild("Gate",34 -(19 + 13) );if v393 then local v798=v393:WaitForChild("ThingToOpen",2 -0 );if v798 then v798:Destroy();end end break;end end end end);local v278;v278=workspace.CurrentRooms.ChildAdded:Connect(function(v327)local v328=0 -0 ;local v329;while true do if (v328==(0 -0)) then v329=v327:WaitForChild("Gate",1 + 1 );if v329 then local v742=0 -0 ;local v743;while true do if (v742==(0 -0)) then v743=v329:WaitForChild("ThingToOpen",1814 -(1293 + 519) );if v743 then v743:Destroy();end break;end end end break;end end end);spawn(function()local v330=0 -0 ;local v331;while true do if ((0 -0)==v330) then v331=workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Gate",3 -1 );if v331 then local v744=0;local v745;while true do if (v744==(0 -0)) then v745=v331:WaitForChild("ThingToOpen",4 -2 );if v745 then v745:Destroy();end break;end end end break;end end end);repeat task.wait();until  not v16.nogates v278:Disconnect();end end});Section3:AddToggle("MyToggle",{Text="No Puzzle",Default=false,Tooltip="Remove Puzzle Doors",Callback=function(v117)local v118=0 + 0 ;while true do if (v118==0) then v16.nopuzzle=v117;if v117 then spawn(function()for v634,v635 in pairs(workspace.CurrentRooms:GetChildren()) do local v636=0 + 0 ;local v637;local v638;while true do if (v636==(0 -0)) then v637=v635:WaitForChild("Assets");v638=v637:WaitForChild("Paintings",1 + 1 );v636=1 + 0 ;end if (v636==(1 + 0)) then if v638 then local v885=v638:WaitForChild("MovingDoor",1098 -(709 + 387) );if v885 then v885:Destroy();end end break;end end end end);local v466;v466=workspace.CurrentRooms.ChildAdded:Connect(function(v535)local v536=v535:WaitForChild("Assets");local v537=v536:WaitForChild("Paintings",1860 -(673 + 1185) );if v537 then local v746=0 -0 ;local v747;while true do if (v746==0) then v747=v537:WaitForChild("MovingDoor",6 -4 );if v747 then v747:Destroy();end break;end end end end);spawn(function()local v538=0;local v539;local v540;while true do if (v538==0) then v539=workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets");v540=v539:WaitForChild("Paintings",2);v538=1 -0 ;end if (v538==(1 + 0)) then if v540 then local v867=v540:WaitForChild("MovingDoor",2 + 0 );if v867 then v867:Destroy();end end break;end end end);repeat task.wait();until  not v16.nopuzzle v466:Disconnect();end break;end end end});local Section4 = Tab:AddRightGroupbox("Auto");game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.AutoBreaker then game:GetService("ReplicatedStorage").EntityInfo.EBF:FireServer();end end);end);Section4:AddToggle("MyToggle",{Text="Auto Breaker Minigame",Default=false,Tooltip="Breaker Box Minigame So Ez",Callback=function(v102)_G.AutoBreaker=v102;end});Section4:AddToggle("MyToggle",{Text="Auto Heartbeat MiniGame",Default=false,Tooltip="Win Heartbeat MiniGame",Callback=function(v97)getgenv().winhb=v97;end});local Section5 = Tab2:AddLeftGroupbox("Player")local Slider = Section5:AddSlider("MySlider",{
	Text = "Walk Speed",
	Min = 16,
	Max = 21,
	Default = 16,
	Tooltip = "WalkSpeed",
	Rounding=0,
	Compact=true,
	Callback = function(Value)
		Speed = Value
	end
})
local Slider = Section5:AddSlider("MySlider",{
	Text = "Fly Speed",
	Min = 0.1,
	Max = 0.4,
	Default = 0.1,
	Tooltip = "FlySpeed",
	Rounding=1,
	Compact=true,
	Callback = function(Value)
		FlySpeed = Value
	end,
})
local Slider = Section5:AddSlider("MySlider",{
	Text = "JumpPower",
	Min = 25,
	Max = 50,
	Default = 25,
	Tooltip = "JumpPower",
	Rounding=0,
        Compact=true,
	Callback = function(Value)
		JumpPower = Value
	end
})

local Slider = Section5:AddSlider("MySlider",{
	Text = "Field Of View",
	Min = 70,
	Max = 120,
	Default = 70,
	Flag = "FOV",
	Rounding=0,
        Compact=true,
	Callback = function(Value)
		FOV = Value
	end
})
game:GetService("RunService").RenderStepped:Connect(function()
	workspace.CurrentCamera.FieldOfView = FOV
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)
local Section6 = Tab2:AddRightGroupbox("Misc Player")
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()for v243,v244 in next,game.Players.LocalPlayer.Character:GetDescendants() do if (v244.IsA(v244,"BasePart") and getgenv().col) then v244.CanCollide=false;end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SlowDownnnonononoo then if (game.Players.LocalPlayer.Character.Head.Massless==true) then local v451=1726 -(1668 + 58) ;local v452;while true do if (v451==(626 -(512 + 114))) then v452=false;game.Players.LocalPlayer.Character.Head.Massless=v452;game.Players.LocalPlayer.Character.LeftFoot.Massless=v452;game.Players.LocalPlayer.Character.LeftHand.Massless=v452;v451=2 -1 ;end if ((1 -0)==v451) then game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v452;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v452;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v452;v451=6 -4 ;end if (v451==(2 + 1)) then game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v452;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v452;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v452;game.Players.LocalPlayer.Character.UpperTorso.Massless=v452;break;end if (v451==2) then game.Players.LocalPlayer.Character.LowerTorso.Massless=v452;game.Players.LocalPlayer.Character.RightFoot.Massless=v452;game.Players.LocalPlayer.Character.RightHand.Massless=v452;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v452;v451=3;end end end end end);end);Section6:AddToggle("MyToggle",{Text="No Acceleration",Default=false,Tooltip="No Slow Down",Callback=function(v85)_G.SlowDownnnonononoo=v85;if (_G.SlowDownnnonononoo==false) then local v245=true;game.Players.LocalPlayer.Character.Head.Massless=v245;game.Players.LocalPlayer.Character.LeftFoot.Massless=v245;game.Players.LocalPlayer.Character.LeftHand.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerArm.Massless=v245;game.Players.LocalPlayer.Character.LeftLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperArm.Massless=v245;game.Players.LocalPlayer.Character.LeftUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.LowerTorso.Massless=v245;game.Players.LocalPlayer.Character.RightFoot.Massless=v245;game.Players.LocalPlayer.Character.RightHand.Massless=v245;game.Players.LocalPlayer.Character.RightLowerArm.Massless=v245;game.Players.LocalPlayer.Character.RightLowerLeg.Massless=v245;game.Players.LocalPlayer.Character.RightUpperArm.Massless=v245;game.Players.LocalPlayer.Character.RightUpperLeg.Massless=v245;game.Players.LocalPlayer.Character.UpperTorso.Massless=v245;end end});Section6:AddToggle("MyToggle",{Text="Noclip",Default=false,Tooltip="Noclip No Bypass",Callback=function(v86)local v87=0 + 0 ;while true do if (v87==0) then getgenv().col=v86;if (getgenv().col==false) then v.IsA(v,"BasePart");v.CanCollide=true;end break;end end end});function sFLY(vfly)
	repeat task.wait() until game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat task.wait() until game:GetService("Players").LocalPlayer:GetMouse()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat task.wait()
				if not vfly and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and FlySpeed or FlySpeed)
		elseif true and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and FlySpeed or FlySpeed)*2
		elseif true and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and FlySpeed or FlySpeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = game:GetService("Players").LocalPlayer:GetMouse().KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local Toggle = Section6:AddToggle("Fly",{
	Text = "Fly",
	Default = false,
	Toopltip = "Fly",
	Callback = function(Value)
		if Value then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end
})
local Section8 = Tab3:AddLeftGroupbox("Anti-Entities")
local Section9 = Tab3:AddRightGroupbox("Anti-Part")
local Toggle = Section8:AddToggle("Nos",{
	Text = "Anti-Screech",
	Default = false,
	Tooltip = "BypassScreech",
	Callback = function(Value)
		if Value then
			Screech = game:GetService("ReplicatedStorage").Entities.Screech
   Screech:Destroy()
                        else
                        Screech:Disconnect()
		end
	end,
})
local Toggle = Section9:AddToggle("BK",{
	Text = "Anti-Lava",
	Default = false,
	Tooltip = "BypassKillbricks",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end
			killBricks = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end)
		else
			killBricks:Disconnect()
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = true
						end
					end
				end
			end
		end
	end,
})

local Toggle = Section8:AddToggle("Beyes",{
	Text = "Anti-Eyes",
	Default = false,
	Tooltip = "BypassEyes",
	Callback = function(Value)
		if Value then
			Eyes = game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
			end)
		else
			Eyes:Disconnect()
		end
	end,
})
local Toggle = Section9:AddToggle("BS",{
	Text = "Anti-Seek Wall",
	Default = false,
	Tooltip = "BypassSeek",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end
			SeekWall = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end)
		else
			SeekWall:Disconnect()
		end
	end,
})

local Toggle = Section8:AddToggle("BD",{
	Text = "Anti-DrakoBloxxers",
	Default = false,
	Tooltip = "BypassDrakoBloxxers",
	Callback = function(Value)
		if Value then
			DrakoBloxxers = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Drakobloxxer" then
					child:Destroy()
					for _, v in pairs(workspace:GetChildren()) do
						if v.Name == "Sound" and v:IsA("Sound") then
							v:Destroy()
						end
					end
				end
			end)
		else
			DrakoBloxxers:Disconnect()
		end
	end,
})
game:GetService("Workspace").DescendantAdded:Connect(function(v186)if  not _G.antibanananana then return;end if v186.IsA(v186,"Part") then if _G.antibanananana then if (v186.Name=="BananaPeel") then v186.CanTouch=false;end end end end);Section9:AddToggle("MyToggle",{Text="Anti-Banana",Default=false,Tooltip="Anti BananaPeel!",Callback=function(v187)local v188=0;while true do if (v188==(0 + 0)) then _G.antibanananana=v187;if (_G.antibanananana==true) then for v600,v601 in pairs(game:GetService("Workspace"):GetDescendants()) do if v601:IsA("Part") then if (v601.Name=="BananaPeel") then v601.CanTouch=false;end end end end break;end end end});game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.antije then for v413,v414 in pairs(game.workspace:GetChildren()) do if (v414.Name=="JeffTheKiller") then v414.Knife.CanTouch=false;end end for v415,v416 in pairs(game.workspace:GetChildren()) do if (v416.Name=="JeffTheKiller") then v416.Head.CanTouch=false;end end for v417,v418 in pairs(game.workspace:GetChildren()) do if (v418.Name=="JeffTheKiller") then v418.HumanoidRootPart.CanTouch=false;end end for v419,v420 in pairs(game.workspace:GetChildren()) do if (v420.Name=="JeffTheKiller") then v420["Left Arm"].CanTouch=false;end end for v421,v422 in pairs(game.workspace:GetChildren()) do if (v422.Name=="JeffTheKiller") then v422["Left Leg"].CanTouch=false;end end for v423,v424 in pairs(game.workspace:GetChildren()) do if (v424.Name=="JeffTheKiller") then v424["Right Arm"].CanTouch=false;end end for v425,v426 in pairs(game.workspace:GetChildren()) do if (v426.Name=="JeffTheKiller") then v426["Right Leg"].CanTouch=false;end end for v427,v428 in pairs(game.workspace:GetChildren()) do if (v428.Name=="JeffTheKiller") then v428.Torso.CanTouch=false;end end end end);end);Section8:AddToggle("MyToggle",{Text="Anti-Jeff The Killer",Default=false,Tooltip="Anti Jeff!",Callback=function(v189)_G.antije=v189;end});
Section8:AddToggle("nsc",{Text="Anti-Seek Trigger",Default=false,Callback=function(v119)v16.noseek=v119;if v119 then local v279;v279=workspace.CurrentRooms.ChildAdded:Connect(function(v333)local v334=0 -0 ;local v335;while true do if (v334==(0 + 0)) then v335=v333:WaitForChild("TriggerEventCollision",2);if v335 then v335:Destroy();end break;end end end);repeat task.wait();until  not v16.noseek v279:Disconnect();end end});
Section8:AddToggle("MyToggle",{Text="Anti-Halt",Default=false,Tooltip="Anti Halt",Callback=function(v122)local v123=0;while true do if (v123==(1480 -(641 + 839))) then _G.BypassHalte=v122;if (_G.BypassHalte==true) then local v472=913 -(910 + 3) ;local v473;while true do if (v472==(0 -0)) then v473=game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade;v473.Parent=game.Workspace;break;end end elseif (_G.BypassHalte==false) then local v642=1684 -(1466 + 218) ;local v643;while true do if (v642==(0 + 0)) then v643=game.Workspace.Shade;v643.Parent=game:GetService("ReplicatedStorage").ClientModules.EntityModules;break;end end end break;end end end});
Section8:AddToggle("MyToggle",{Text="Anti-Dupe",Default=false,Tooltip="Anti Dupe",Callback=function(v128)v16.nodupe=v128;if v128 then local v288;v288=game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()task.wait();for v397,v398 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if (v398.Name=="DoorFake") then v398.Hidden.CanTouch=false;end end repeat task.wait();until  not v16.nodupe v288:Disconnect();end);end end});
local v48=game.ReplicatedStorage:WaitForChild("EntityInfo"):WaitForChild("A90");Section8:AddToggle("MyToggle",{Text="Anti-A90",Default=false,Tooltip="Bypass A-90 Use In The Rooms",Callback=function(v130)v16.noa90=v130;if v130 then local v289=0 + 0 ;local v290;while true do if (v289==(1477 -(29 + 1448))) then v290=v12.PlayerGui:WaitForChild("MainUI"):WaitForChild("Jumpscare"):FindFirstChild("Jumpscare_A90");if v290 then v290.Parent=nil;v48.Parent=nil;repeat task.wait();game.SoundService.Main.Volume=1390 -(135 + 1254) ;until  not v16.noa90 v290.Parent=v12.PlayerGui.MainUI.Jumpscare;v48.Parent=v15;end break;end end end end});
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.bypassSnare then for v399,v400 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v400.Name=="Snare") then v400.Hitbox['TouchInterest']:Destroy();end end end end);end);Section9:AddToggle("MyToggle",{Text="Anti-Snare",Default=false,Tooltip="Anti Snare",Callback=function(v132)_G.bypassSnare=v132;end});
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SeekESe then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Seek_Arm") then for v528,v529 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v529.Name=="Seek_Arm") then v529.AnimatorPart.CanTouch=false;end end end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SeekES then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("ChandelierObstruction") then for v530,v531 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v531.Name=="ChandelierObstruction") then v531.HurtPart.CanTouch=false;end end end end end);end);Section8:AddToggle("MyToggle",{Text="Anti-Seek Arms",Default=false,Tooltip="Remove Seek Arms HitBox From Seek Chase",Callback=function(v111)_G.SeekESe=v111;end})
Section9:AddToggle("MyToggle",{Text="Anti-Chandelier Fire",Default=false,Tooltip="Remove Fire Damage From Seek Chase",Callback=function(v112)_G.SeekES=v112;end})
local Section10 = Tab3:AddRightGroupbox("Avoid")
local Button = Section10:AddToggle("Gm",{
	Text = "God Mode - Noclip [BYPASS]",
        Default = false,
	Tooltip = "Anti Ambush/Rush Died",
	Callback = function(GM)
 if GM then
 local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,7.5,0)
else
local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,-7.5,0)
   end
end
})
local Button = Section9:AddButton({
	Text = "No Time Messeger [RETRO]",
	Func = function()
		for _, v in pairs(workspace:GetChildren()) do
			if v:IsA("Message") then
				v:Destroy()
			end
		end
	end
})
