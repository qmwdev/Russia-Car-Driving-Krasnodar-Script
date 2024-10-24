# Russia-Car-Driving-Krasnodar-Script
Basic Auto Farm Script For RCDK (12640241039)

```lua
local Delivery_upvr = game:GetService("ReplicatedStorage").Delivery
local Delivery_space = game.Workspace.DeliveryWorkspace
local Local_Player = game.Players.LocalPlayer
Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(1348, 22, -1746)
for _,v in pairs(Delivery_space:GetChildren()) do
	v.CFrame = Local_Player.Character.HumanoidRootPart.CFrame
end

task.spawn(function()
wait(1)
	while task.wait(1) do
		Local_Player.Character.HumanoidRootPart.CFrame = CFrame.new(1348, 27, -1746)
		Delivery_upvr:FireServer("Get")
	end
end)

local vu = game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end) 
```

How To Use:
1. Join Game
2. Execute script
3. That's all

Script is Open Source, so You Can Modify Whatever You Want
P.S i took anti-afk script somewhere from the internet
