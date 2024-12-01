--@credits to: bruhguy7082/qmwdev
local Delivery_upvr = game:GetService("ReplicatedStorage").Delivery
local Delivery_space = game.Workspace.DeliveryWorkspace
local Local_Player = game.Players.LocalPlayer
Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(1355, 32, -1745)

task.spawn(function()
	while task.wait() do
        for _,v in pairs(Delivery_space:GetChildren()) do
            v.CFrame = Local_Player.Character.HumanoidRootPart.CFrame
			wait(0.05)
            v.CFrame += Vector3.new(0, 10, 10)
        end
		Delivery_upvr:FireServer("Get")
	end
end)

--not mine anti-afk
local vu = game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end)