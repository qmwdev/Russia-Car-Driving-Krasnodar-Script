--@credits to: bruhguy7082/qmwdev
local Delivery_upvr = game:GetService("ReplicatedStorage").Delivery
local Delivery_space = game.Workspace.DeliveryWorkspace
local Local_Player = game.Players.LocalPlayer
Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(1355, 32, -1745)
local TweenService = game:GetService("TweenService")
local part_to_tween = Local_Player.Character.HumanoidRootPart

local tweenInfo = TweenInfo.new(
	1, -- Время в секундах
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out,
	1,
	false,
	0
)
--$ ебанутый обход
--1351.47961, 22.2827911, -1751.8252
local under_del = Instance.new('Part', game.Workspace)
under_del.Position = Vector3.new(0, 500, 0)
under_del.Size = Vector3.new(10, 1, 10)
under_del.Anchored = true



task.spawn(function()
    while task.wait() do
        Delivery_upvr:FireServer("Get")
        for _,v in pairs(Delivery_space:GetChildren()) do
            if v.Transparency == 0 then
                print(v.Position)
                local tween = TweenService:Create(part_to_tween, tweenInfo, {CFrame = v.CFrame + Vector3.new(0, 20, 0)})
                Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(under_del.Position.X, under_del.Position.Y + 10, under_del.Position.Z)
                	wait(8)
					tween:Play()
					Local_Player.Character.HumanoidRootPart.Anchored = true
					task.wait(tweenInfo.Time)
					wait(1)
					Local_Player.Character.HumanoidRootPart.Anchored = false
					wait(3)
            else
                Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(1355, 32, -1745)
            end
        end
    end
end)


--not mine anti-afk
local vu = game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)
