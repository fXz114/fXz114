local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/nJJPrp2w"))()
local Window = OrionLib:MakeWindow({Name = "zzl脚本", HidePremium = false, IntroText = "zzl脚本"})

local about = Window:MakeTab({
    Name = "公告",
    Icon = "rbxassetid://12166899359",
    PremiumOnly = false
})

about:AddParagraph("永远免费")
about:AddParagraph("适配的游戏有evade 力量传奇 极速传奇 忍者传奇 doors the rake 背上只因剑 bf")
about:AddParagraph("彩虹朋友 兵工厂 伐木大亨 one fruit 俄亥俄州 监狱人生 手臂摔跤")
about:AddParagraph("更新：元素地下城 水果战场 蜂群模拟器 法宝模拟器 傻神 杀手vs警长 race clik")
about:AddParagraph("更新：刀刃球")
about:AddParagraph("作者qq：3555788945")

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
      Name = "阿尔宙斯V3.0 UI",
      Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
      end
})
 
 Tab:AddButton({
  Name = "光影",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/arzRCgwS"))()
  end
})

Tab:AddButton({
  Name = "光影_2",
  Default = false,
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  end
})

Tab:AddButton({
  Name = "美丽天空",
  Callback = function()
    -- Roblox Graphics Enhancher
    local light = game.Lighting
    for i, v in pairs(light:GetChildren()) do
      v:Destroy()
    end

    local ter = workspace.Terrain
    local color = Instance.new("ColorCorrectionEffect")
    local bloom = Instance.new("BloomEffect")
    local sun = Instance.new("SunRaysEffect")
    local blur = Inst
  end
})

Tab:AddButton({
	Name = "超高画质",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end
})    

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})
 
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})

Tab:AddButton({
  Name = "neko （黄）",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
  end
})

Tab:AddButton({  
    Name = "iy指令",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})

Tab:AddButton({
  Name = "指令2",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))();
  end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

Tab:AddButton({
	Name = "反挂机2",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
  	end    
})

Tab:AddButton({  
    Name = "FPS助推",
	Callback = function()
	--[[ Subscribe to Zaptosis on YouTube for more awesome scripts!
 
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
███▀▀▀███░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░
█▀░░░███░░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
▀░░░███░░▄█▀██▄░▀████████▄██████░░▄██▀██▄░▄██▀██████░░▄██▀███
░░░███░░██░░░██░░░██░░░▀██░░██░░░██▀░░░▀████░░░▀▀░██░░██░░░▀▀
░░███░░░▄▄█████░░░██░░░░██░░██░░░██░░░░░██▀█████▄░██░░▀█████▄
░███░░░▄██░░░██░░░██░░░▄██░░██░░░██▄░░░▄███▄░░░██░██░░█▄░░░██
█████████████▀██▄░██████▀░░░▀████░▀█████▀░██████▀████▄██████▀
░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░▄████▄░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
]]
_G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
     end
})

Tab:AddButton({
    Name = "子弹追踪",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/8GhR79DA"))()
   end
})

Tab:AddButton({  
    Name = "范围(全游戏通用)",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/dMiziBzT"))()
	end
})

Tab:AddButton({
    Name = "无限跳",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end
})

Tab:AddButton({  
    Name = "画质脚本",
	Callback = function()
	loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
	end
})

local Tab = Window:MakeTab({
	Name = "玩家",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "碰到就甩飞",
	Callback = function()
	-- Subscribe to Coldster
-- https://discord.gg/4EbnAbXDPY
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
	end
})

Tab:AddButton({
      Name = "点击传送工具",
      Callback = function()
      mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE]点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
      end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})

Tab:AddButton({
  Name = "飞行",
  Callback = function()
    game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "Credits";
                Text ="zhanghuihuihui";
                Duration = 2.5;
            })
-- Gui to Lua
-- Version: 3.2

-- Instances:

local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")

--Properties:

main.Name = "main"
main.Parent = game.CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

up.Name = "up"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14.000

down.Name = "down"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14.000

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "fly"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14.000

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "gui by me_ozoneYT"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

plus.Name = "plus"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14.000
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14.000
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14.000
mine.TextWrapped = true

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.LowerTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	





end)


up.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
	
end)


down.MouseButton1Down:connect(function()

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-2,0)

end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then
		

	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'can not be less than 1'
		wait(1)
		speed.Text = speeds
	else
	speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
	tpwalking = false
	for i = 1, speeds do
		spawn(function()

			local hb = game:GetService("RunService").Heartbeat	


			tpwalking = true
			local chr = game.Players.LocalPlayer.Character
			local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
			while tpwalking and hb:Wait() and chr and hum and hum.Parent do
				if hum.MoveDirection.Magnitude > 0 then
					chr:TranslateBy(hum.MoveDirection)
				end
			end

		end)
		end
		end
		end
end)
  end
})

local Tab = Window:MakeTab({
	Name = "其他创作者脚本",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "白脚本（需白明）",
	Callback = function()
	_G["白脚本作者修狗"]="xdjhadgdsrfcyefjhsadcctyseyr6432478rudghfvszhxcaheey"loadstring(game:HttpGet(('https://raw.githubusercontent.com/wev666666/baijiaobengV2.0beta/main/%E7%99%BD%E8%84%9A%E6%9C%ACbeta'),true))() 
	end
})

Tab:AddButton({  
    Name = "幻想",
	Callback = function()
	--幻想(delta无法使用)
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\88\120\48\119\114\54\120\72"))()
	end
})

local Tab = Window:MakeTab({
	Name = "刀刃球",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/fdfXWwUD')))()
  end
})

local Tab = Window:MakeTab({
	Name = "evade",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "evade",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/5LWVP5AL"))()
	end
})

local Tab = Window:MakeTab({
	Name = "传奇类游戏",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "力量传奇",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Muscle-Legends'),true))()
	end
})

Tab:AddButton({  
    Name = "极速传奇",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/vE8x0eHm"))()
	end
})

Tab:AddButton({  
    Name = "忍者传奇",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AliCode14/scripts/main/ScriptHub.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "MSdoors",
	Callback = function()
	loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSHUB_Loader.lua"),true))()
	end
})

Tab:AddButton({  
    Name = "飞行",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({  
    Name = "封印一切十字架",
	Callback = function()
	_G.Uses = 99999999999
_G.Range = 999
_G.OnAnything = true
_G.Fail = false
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))() --no deivid-- --execute this instead--
     end
})

Tab:AddButton({
    Name = "火焰喷射器",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Flamethrower"))()
	end
})

Tab:AddButton({
    Name = "刷怪菜单",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/JV8XgbQs"))()
	end
})

Tab:AddButton({  
    Name = "拯救上帝",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/0DSDSzee"))()
	end
})
	
Tab:AddButton({
	Name = "紫色手电筒",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Purple%20Flashlight%20Script.lua"))()
    end
})

local Tab = Window:MakeTab({
	Name = "the rake",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "脚本1",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/jrpzDS5p"))()
	end
})

local Tab = Window:MakeTab({
	Name = "背上只因剑",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "背上只因剑",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0SwordWarriors"))()
	end
})

local Tab = Window:MakeTab({
	Name = "bf",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "Blox fruit",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHuB/main/Chiba-BF.txt'))()
	end
})

local Tab = Window:MakeTab({
	Name = "俄亥俄州",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "菜单1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()
	end
})

Tab:AddButton({  
    Name = "收集物品现金",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/1QCwNAXx"))()
	end
})

local Tab = Window:MakeTab({
	Name = "监狱人生",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "管理员",
	Callback = function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/h17s3/TIGERADMIN/main/TIGERADMINSCRIPTFREE'),true))()
	end
})

Tab:AddButton({
    Name = "多功能菜单",
	Callback = function()
	loadstring(game:HttpGet('https://paste.website/p/96d68817-3f1e-4fef-a8b8-9aafdc810329.txt'))()
	end
})

Tab:AddButton({
	Name = "声音折磨",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GEianeKX"))()
    end
})

Tab:AddButton({  
    Name = "变身龙战士",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/4uuqVUNA"))()
	end
})

Tab:AddButton({
    Name = "罗亚天1.5 ",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))();
	end
})

local Section = Tab:AddSection({
	Name = "传送位置"
})
Tab:AddButton({
	Name = "警卫室",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
  	end
})

Tab:AddButton({
	Name = "监狱室内",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
  	end
})

Tab:AddButton({  
    Name = "餐厅",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(915, 99, 2328)
	end
})

Tab:AddButton({
	Name = "罪犯复活点",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
  	end
})

Tab:AddButton({
	Name = "院子",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
  	end
})

local Tab = Window:MakeTab({
	Name = "手臂摔跤",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({  
    Name = "1",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KrzysztofHub/script/main/loader.lua"))()
	end
})

local Tab = Window:MakeTab({
	Name = "彩虹朋友",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "彩虹朋友",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
  end
})
local Tab = Window:MakeTab({
	Name = "兵工厂",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "兵工厂",
  Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()
  end
})
local Tab = Window:MakeTab({
	Name = "one fruit",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "one fruit",
  Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/13B8B/NEXUS/main/loadstring'))()
  end
})

local Tab = Window:MakeTab({
	Name = "伐木大亨",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "伐木大亨",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/FBXG1hhk",true))()
  end
})

local Tab = Window:MakeTab({
	Name = "元素地下城",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeExoHub/PrimeExo-Hub-Elemental-Dungeons/main/Script"))()
  end
})

local Tab = Window:MakeTab({
	Name = "水果战场",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/noSkidlol/Roblox/main/LOADING_UI')))()
  end
})

Tab:AddButton({
	Name = "复制卡密",
	Callback = function()
     setclipboard("Key_Illlll1llll")
  	end
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PrimeExoHub/PrimeExo-Hub-Fruit-Battlegrounds-V1/main/script"))()
  end
})

local Tab = Window:MakeTab({
	Name = "蜂群模拟器",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:GetObjects("rbxassetid://4384103988")[0X1].Source)("Pepsi Swarm")
  end
})

local Tab = Window:MakeTab({
	Name = "法宝模拟器",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/loader_1038"))()
  end
})

local Tab = Window:MakeTab({
	Name = "杀手vs警长",
	Icon = "rbxassetid://11648246803",
PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet("https://roflux.net/scripts/games/" .. tostring(game.PlaceId) .. ".lua"))()
  end
})

local Tab = Window:MakeTab({
	Name = "race click",
	Icon = "rbxassetid://11648246803",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "1",
  Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Race%20Clicker')))()
  end
})

if game.PlaceId == 3101667897 then
    -- Head
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    -- Notificação
    OrionLib:MakeNotification({
	Name = "zzl极速",
	Content = "zzl极速",
	Image = "rbxassetid://4483345998",
	Time = 5
    })
    
    wait(5)
    
    -- Janela
    local Window = OrionLib:MakeWindow({Name = "极速传奇", HidePremium = false, IntroText = "极速传奇"})

    -- Variáveis
    getgenv().AutoOrb = true
    getgenv().AutoRebirth = true
    getgenv().AutoGem = true
    getgenv().AutoEgg = true
    getgenv().Egg = "Yellow Crystal"
    getgenv().BugPet = true
    getgenv().AutoHoop = true
    local Player = game:GetService("Players").LocalPlayer

    -- Funções
    function AutoOrb()
        while getgenv().AutoOrb == true do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
            wait()
        end
    end

    function AutoGem()
        while getgenv().AutoGem == true do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
            wait()
        end
    end    

    function AutoRebirth()
        while getgenv().AutoRebirth == true do
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait()
        end
    end
    
    function BugPet()
        while getgenv().BugPet == true do
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
            game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
            wait(0.1)
        end
    end

    -- Body
    local FarmTab = Window:MakeTab({
	    Name = "自动农场",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    local TeleportTab = Window:MakeTab({
	    Name = "传送",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    local EggTab = Window:MakeTab({
	    Name = "宠物",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
	    Name = "其他",
	    Icon = "rbxassetid://4483345998",
	    PremiumOnly = false
    })

    -- Toggles
    FarmTab:AddToggle({
	    Name = "自动跳圈",
	    Default = false,
	    Callback = function(Value)
		    getgenv().AutoOrb = Value
		    AutoOrb()
	    end
    })
    
    FarmTab:AddToggle({
	    Name = "自动跳环",
	    Default = false,
	    Callback = function(Value)
		    getgenv().AutoHoop = Value
		    spawn(function()
                while getgenv().AutoHoop == true do
                    for i, v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                        firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 0)
                        wait()
                        firetouchinterest(v, game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, 1)
                    end
                end
            end)    
	    end
    })

    FarmTab:AddToggle({
	    Name = "自动获得宝石",
	    Default = false,
	    Callback = function(Value)
		    getgenv().AutoGem = Value
		    AutoGem()
	    end
    })

    MiscTab:AddToggle({
	    Name = "自动重生",
	    Default = false,
	    Callback = function(Value)
		    getgenv().AutoRebirth = Value
		    AutoRebirth()
	    end    
    })
    
    EggTab:AddToggle({
	Name = "自动开蛋",
	Default = false,
	Callback = function(Value)
            function Egg()
                while getgenv().AutoEgg == true do
                    game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer("openCrystal", getgenv().Egg)
                    wait()
                end
            end
            
            getgenv().AutoEgg = Value
            Egg()
          end
    })
    
    EggTab:AddToggle({
	    Name = "卡宠",
	    Default = false,
	    Callback = function(Value)
		    getgenv().BugPet = Value
		    BugPet()
	    end    
    })

    -- Buttons
    TeleportTab:AddButton({
	    Name = "传奇公路",
	    Callback = function()
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(3682.60254, 71.5308151, 5592.50879, -0.0193620101, 3.62180188e-08, -0.999812543, 4.99353519e-08, 1, 3.52577771e-08, 0.999812543, -4.92433294e-08, -0.0193620101)
          end    
    })

    TeleportTab:AddButton({
	    Name = "白雪城",
	    Callback = function()
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-866.386841, 4.00088787, 2165.70654, -0.499959469, -9.93534854e-08, -0.866048813, -4.44803661e-08, 1, -8.90424445e-08, 0.866048813, -5.99544503e-09, -0.499959469)
      	end    
    })

    TeleportTab:AddButton({
	    Name = "熔岩城",
	    Callback = function()
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(1616.82739, 4.05089617, 4330.65283, 7.86637156e-06, -4.15036254e-08, -1, -6.3789912e-08, 1, -4.15041264e-08, 1, 6.37902389e-08, 7.86637156e-06)
      	end    
    })

    TeleportTab:AddButton({
	    Name = "老家",
	    Callback = function()
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            char.HumanoidRootPart.CFrame = CFrame.new(-537.767456, 3.95088959, 386.226837, 1, 0, 0, 0, 1, 0, 0, 0, 1)
      	end    
    })
    
    -- Dropdowns
    EggTab:AddDropdown({
	Name = "选择要开的蛋",
	Default = "Yellow Crystal",
	Options = {"Yellow Crystal", "Blue Crystal", "Red Crystal", "Lightning Crystal", "Inferno Crystal", "Lava Crystal", "Snow Crystal", "Electro Legends Crystal", "Space Crystal", "Alien Crystal", "Electro Crystal", "Desert Crystal"},
	Callback = function(Value)
		getgenv().Egg = Value
	end    
    })
end
OrionLib:Init()

if game.PlaceId == 13772394625 then
local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local localPlayer = players.LocalPlayer
local BASE_THRESHOLD = 0.2
local VELOCITY_SCALING_FACTOR_FAST = 0.050
local VELOCITY_SCALING_FACTOR_SLOW = 0.1
local IMMEDIATE_PARRY_DISTANCE = 15
local IMMEDIATE_HIGH_VELOCITY_THRESHOLD = 85
local UserInputService = game:GetService("UserInputService")
local responses = {"lol what", "??", "wdym", "bru what", "mad cuz bad", "skill issue", "cry"}
local gameEndResponses = {"ggs", "gg :3", "good game", "ggs yall", "wp", "ggs man"}
local keywords = {"auto parry", "auto", "cheating", "hacking"}
local heartbeatConnection
local focusedBall, displayBall = nil, nil
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local ballsFolder = workspace:WaitForChild("Balls")
local parryButtonPress = replicatedStorage.Remotes.ParryButtonPress
local abilityButtonPress = replicatedStorage.Remotes.AbilityButtonPress
local sliderValue = 20
local distanceVisualizer = nil
local isRunning = false
local notifyparried = false
local PlayerGui = localPlayer:WaitForChild("PlayerGui")
local Hotbar = PlayerGui:WaitForChild("Hotbar")
local UseRage = false

local uigrad1 = Hotbar.Block.border1.UIGradient
local uigrad2 = Hotbar.Ability.border2.UIGradient


local function isPlayerOnMobile()
    return UserInputService.TouchEnabled and not (UserInputService.KeyboardEnabled or UserInputService.GamepadEnabled)
end

local RayfieldURL = isPlayerOnMobile() and 
                    'https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AArrayfield%20Library' or 
                    'https://sirius.menu/rayfield'

local Rayfield = loadstring(game:HttpGet(RayfieldURL))()


local Window = Rayfield:CreateWindow({
   Name = "Blade Ball",
   LoadingTitle = "Inferno Scripts",
   LoadingSubtitle = "by InfernoKarl",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "Inferno Scripts",
      FileName = "Inferno Scripts"
   },
   Discord = {
      Enabled = true,
      Invite = "hNX8VxcjMF",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Inferno Scripts",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/hNX8VxcjMF)",
      FileName = "InfernoKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = "Hello"
   }
})

local AutoParry = Window:CreateTab("Auto Parry", 13014537525)

if character then
    print("Character found.")
else
    print("Character not found.")
    return
end

local function notify(title, content, duration)
    Rayfield:Notify({
        Title = title,
        Content = content,
        Duration = duration or 0.7,
        Image = 10010348543
    })
end

local function chooseNewFocusedBall()
    local balls = ballsFolder:GetChildren()
    for _, ball in ipairs(balls) do
        if ball:GetAttribute("realBall") ~= nil and ball:GetAttribute("realBall") == true then
            focusedBall = ball
            print(focusedBall.Name)
            break
        elseif ball:GetAttribute("target") ~= nil then
            focusedBall = ball
            print(focusedBall.Name)
            break
        end
    end
    
    if focusedBall == nil then
        print("Debug: Could not find a ball that's the realBall or has a target.")
        wait(1)
        chooseNewFocusedBall()
    end
    return focusedBall
end

local function getDynamicThreshold(ballVelocityMagnitude)
    if ballVelocityMagnitude > 60 then
        return math.max(0.20, BASE_THRESHOLD - (ballVelocityMagnitude * VELOCITY_SCALING_FACTOR_FAST))
    else
        return math.min(0.01, BASE_THRESHOLD + (ballVelocityMagnitude * VELOCITY_SCALING_FACTOR_SLOW))
    end
end

local function timeUntilImpact(ballVelocity, distanceToPlayer, playerVelocity)
    if not character then return end
    local directionToPlayer = (character.HumanoidRootPart.Position - focusedBall.Position).Unit
    local velocityTowardsPlayer = ballVelocity:Dot(directionToPlayer) - playerVelocity:Dot(directionToPlayer)
    
    if velocityTowardsPlayer <= 0 then
        return math.huge
    end
    
    return (distanceToPlayer - sliderValue) / velocityTowardsPlayer
end

local function updateDistanceVisualizer()
    local charPos = character and character.PrimaryPart and character.PrimaryPart.Position
    if charPos and focusedBall then
        if distanceVisualizer then
            distanceVisualizer:Destroy()
        end

        local timeToImpactValue = timeUntilImpact(focusedBall.Velocity, (focusedBall.Position - charPos).Magnitude, character.PrimaryPart.Velocity)
        local ballFuturePosition = focusedBall.Position + focusedBall.Velocity * timeToImpactValue

        distanceVisualizer = Instance.new("Part")
        distanceVisualizer.Size = Vector3.new(1, 1, 1)
        distanceVisualizer.Anchored = true
        distanceVisualizer.CanCollide = false
        distanceVisualizer.Position = ballFuturePosition
        distanceVisualizer.Parent = workspace    
    end
end

local function checkIfTarget()
    for _, v in pairs(ballsFolder:GetChildren()) do
        if v:IsA("Part") and v.BrickColor == BrickColor.new("Really red") then 
            print("Ball is targetting player.")
            return true 
        end 
    end 
    return false
end

local function isCooldownInEffect(uigradient)
    return uigradient.Offset.Y < 0.5
end


local function checkBallDistance()
    if not character or not checkIfTarget() then return end

    local charPos = character.PrimaryPart.Position
    local charVel = character.PrimaryPart.Velocity

    if focusedBall and not focusedBall.Parent then
        print("Focused ball lost parent. Choosing a new focused ball.")
        chooseNewFocusedBall()
    end
    if not focusedBall then 
        print("No focused ball.")
        chooseNewFocusedBall()
    end

    local ball = focusedBall
    local distanceToPlayer = (ball.Position - charPos).Magnitude
    local ballVelocityTowardsPlayer = ball.Velocity:Dot((charPos - ball.Position).Unit)
    
    if distanceToPlayer < 15 then
        parryButtonPress:Fire()
        task.wait()
    end

    if timeUntilImpact(ball.Velocity, distanceToPlayer, charVel) < getDynamicThreshold(ballVelocityTowardsPlayer) then
        if (character.Abilities["Raging Deflection"].Enabled or character.Abilities["Rapture"].Enabled) and UseRage == true then
            if not isCooldownInEffect(uigrad2) then
                abilityButtonPress:Fire()
            end

            if isCooldownInEffect(uigrad2) and not isCooldownInEffect(uigrad1) then
                parryButtonPress:Fire()
                if notifyparried == true then
                    notify("Auto Parry", "Manually Parried Ball (Ability on CD)", 0.3)
                end
            end

        elseif not isCooldownInEffect(uigrad1) then
            print(isCooldownInEffect(uigrad1))
            parryButtonPress:Fire()
            if notifyparried == true then
                notify("Auto Parry", "Automatically Parried Ball", 0.3)
            end
            task.wait(0.3)
        end
    end
end


local function autoParryCoroutine()
    while isRunning do
        checkBallDistance()
        updateDistanceVisualizer()
        task.wait()
    end
end



localPlayer.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    chooseNewFocusedBall()
    updateDistanceVisualizer()
end)

localPlayer.CharacterRemoving:Connect(function()
    if distanceVisualizer then
        distanceVisualizer:Destroy()
        distanceVisualizer = nil
    end
end)



local function startAutoParry()
    print("Script successfully ran.")
    
    chooseNewFocusedBall()
    
    isRunning = true
    local co = coroutine.create(autoParryCoroutine)
    coroutine.resume(co)
end

local function stopAutoParry()
    isRunning = false
end


local AutoParrySection = AutoParry:CreateSection("Auto Parry")

local AutoParryToggle = AutoParry:CreateToggle({
    Name = "Auto Parry",
    CurrentValue = false,
    Flag = "AutoParryFlag",
    Callback = function(Value)
        if Value then
            startAutoParry()
            notify("Auto Parry", "Auto Parry has been started", 1)
        else
            stopAutoParry()
            notify("Auto Parry", "Auto Parry has been disabled", 1)
        end
    end,
})


local AutoRagingDeflect = AutoParry:CreateToggle({
    Name = "Auto Rage Parry/Rapture Parry (MUST EQUIP PROPER ABILITY)",
    CurrentValue = false,
    Flag = "AutoRagingDeflectFlag",
    Callback = function(Value)
        if Value then
            startAutoParry()
            UseRage = Value
            notify("Auto Parry", "Auto Parry with Ability has been started", 1)
        else
            stopAutoParry()
            UseRage = Value
            notify("Auto Parry", "Auto Parry with Ability has been disabled", 1)
        end
    end,
})



local CloseFighting = AutoParry:CreateSection("Close Fighting")
 local SpamParry = AutoParry:CreateKeybind({
    Name = "Spam Parry (Hold)",
    CurrentKeybind = "C",
    HoldToInteract = true,
    Flag = "ToggleParrySpam", 
    Callback = function(Keybind)
        parryButtonPress:Fire()
    end,
 })
 

local Configuration = AutoParry:CreateSection("Configuration")

local DistanceSlider = AutoParry:CreateSlider({
    Name = "Distance Configuration",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Distance",
    CurrentValue = 20,
    Flag = "DistanceSlider",
    Callback = function(Value)
        sliderValue = Value
    end,
 })

local ToggleParryOn = AutoParry:CreateKeybind({
   Name = "Toggle Parry On (Bind)",
   CurrentKeybind = "One",
   HoldToInteract = false,
   Flag = "ToggleParryOn", 
   Callback = function(Keybind)
AutoParryToggle:Set(true)

   end
})



local ToggleParryOff = AutoParry:CreateKeybind({
   Name = "Toggle Parry Off (Bind)",
   CurrentKeybind = "Two",
   HoldToInteract = false,
   Flag = "ToggleParryOff",
   Callback = function(Keybind)
   AutoParryToggle:Set(false)
   end,
})

local ToggleParryOffPlus = AutoParry:CreateKeybind({
    Name = "+ 10 range",
    CurrentKeybind = "X",
    HoldToInteract = false,
    Flag = "ToggleParryOffPlus",
    Callback = function()
         if sliderValue < 200 then
             sliderValue = sliderValue + 10
             DistanceSlider:Set(sliderValue)
             notify("Range Increased", "New Range: " .. sliderValue)
         end
    end,
 })
 
 local ToggleParryOffMinus = AutoParry:CreateKeybind({
    Name = "- 10 range",
    CurrentKeybind = "Z",
    HoldToInteract = false,
    Flag = "ToggleParryOffMinus",
    Callback = function()
         if sliderValue > 0 then
             sliderValue = sliderValue - 10
             DistanceSlider:Set(sliderValue)
             notify("Range Decreased", "New Range: " .. sliderValue)
         end
    end,
 })

local AutoGGToggle = AutoParry:CreateToggle({
    Name = "Auto GG",
    CurrentValue = false,
    Flag = "AutoGGFlage",
    Callback = function(Value)
        return
    end
})

local AutoResponseToggle = AutoParry:CreateToggle({
    Name = "Auto Response",
    CurrentValue = false,
    Flag = "AutoResponseFlage",
    Callback = function(Value)
        return
    end
})

local notifyparriedthing = AutoParry:CreateButton({
    Name = "Enable/Disable Notify when parried",
    Callback = function()
        if not notifyparried == true then
            notifyparried = true
            notify("Auto Parry", "Auto Parry Notify when parried has been enabled", 0.7)
        else
            notifyparried = false
            notify("Auto Parry", "Auto Parry Notify when parried has been disabled", 0.7)
        end
    end,
 })

 local ChangeDistanceTo30thing = AutoParry:CreateKeybind({
    Name = "Distance 30",
    CurrentKeybind = "V",
    HoldToInteract = false,
    Flag = "Distanceto100", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
 DistanceSlider:Set(30) -- The new slider integer value
 sliderValue = 30
 notify("Range Set", "New Range: " .. sliderValue)
    end,
 })
 
 local ChangeDistanceTo100thing = AutoParry:CreateKeybind({
    Name = "Distance 100",
    CurrentKeybind = "B",
    HoldToInteract = false,
    Flag = "Distanceto100", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
     sliderValue = 100
 DistanceSlider:Set(100) -- The new slider integer value
 notify("Range Set", "New Range: " .. sliderValue)
    end,
 })

workspace:FindFirstChild("Alive").ChildRemoved:Connect(function()
    if #(workspace.Alive:GetChildren()) <= 1 and AutoGGToggle.CurrentValue and not ggdebounce then
        ggdebounce = true
        local randomResponse = math.random(1, #gameEndResponses)
        wait(math.random(2,3.5))
        replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(gameEndResponses[randomResponse],"All")
        task.wait(math.random(1.5,3.3))
        ggdebounce = false
    end
end)

players.PlayerChatted:Connect(function(PlayerChatType,Player,Message)
    for _,v in pairs(keywords) do
        if (string.find(Message, v)) and Player ~= localPlayer and AutoResponseToggle.CurrentValue and not responsedebounce then
            responsedebounce = true
            local choice = math.random(1, #responses)
            replicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(responses[choice],"All")
            task.wait(2,5)
            responsedebounce = false
        end
    end
end)
