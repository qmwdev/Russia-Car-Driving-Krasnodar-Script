# Russia-Car-Driving-Krasnodar-Script
Basic Auto Farm Script For RCDK (12640241039)
https://discord.gg/wERDPQUt5H - ру сервак

Доставка НОВАЯ ВЕРСИЯ (NEW VERSION)
```lua
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
```



Доставка
```lua
--@credits to: bruhguy7082/qmwdev
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
Такси
```lua
local stops = game.Workspace.TaxiWorkspace
local lpr = game.Players.LocalPlayer.Character
local take_route = game:GetService("ReplicatedStorage").Taxi.Taxi
local mycar = game.Workspace.Cars[lpr.Name..'sCar'].DriveSeat.Promt.ProximityPrompt
local idk = game.Workspace.Cars[lpr.Name..'sCar'].PressF

task.spawn(function()
    mycar.HoldDuration = 0
    while task.wait(0.5) do
        for _,v in pairs(stops:GetChildren()) do
            take_route:FireServer("Start", 1)
            v.Stop.CFrame = lpr.HumanoidRootPart.CFrame
        end
    end
end)

task.spawn(function()
    while task.wait(0.5) do
        wait(1.3)
        idk:FireServer()
        wait(1.3)
        fireproximityprompt(mycar)
    end
end)


local vu = game:GetService("VirtualUser")game:GetService("Players").LocalPlayer.Idled:connect(function() vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)end) 
```
Такси (Улучшенная, юзайте этот)
```lua
local stops = game.Workspace.TaxiWorkspace
local lpr = game.Players.LocalPlayer.Character
local take_route = game:GetService("ReplicatedStorage").Taxi.Taxi
task.spawn(function()
    while task.wait(0.5) do
        for _,v in pairs(stops:GetChildren()) do
            for i = 1, 5 do
                take_route:FireServer("Start", i)
            end
            v.Stop.CFrame = lpr.HumanoidRootPart.CFrame
            wait(0.1)
            v.Stop.CFrame = lpr.HumanoidRootPart.CFrame + Vector3.new(0,100,10)
        end
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

getsolara.dev or discord.gg/getxeno
