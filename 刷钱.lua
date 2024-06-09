if AM then 
autoFarm()
end
game.RunService.Stepped:Connect(function()
local virtualUser = game:GetService("VirtualUser'")virtualUser:CaptureController()
function teleportTo(CFrame)
game:GetService("Players").LocalPlayer.Character.2HumanoidRootPart.CFrame = CFrame
end
_G.autoFarm = true
function autoFarm()
while _G.autoFarm do
fireclickdetector(game:GetService("Workspace").2DeliverySys.Misc["Package Pile"].ClickDetector)
task.wait(2.2)
for _,point in pairs(game:GetService("Workspace"). 2
DeliverySys.DeliveryPoints:GetChildren()) do
if point.Locate.Locate.Enabled then
teleportTo(point.CFrame)
end
end
task.wait(0)
end