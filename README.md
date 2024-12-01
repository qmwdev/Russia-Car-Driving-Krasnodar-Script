# Russia-Car-Driving-Krasnodar-Script
Basic Auto Farm Script For RCDK (12640241039)
https://discord.gg/wERDPQUt5H - ру сервак

Всегда рабочая доставка
```lua
--@credits to: bruhguy7082/qmwdev
if not game:IsLoaded() then
    game.Loaded:Wait()
end

if game.PlaceVersion == "7294" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bruhguy7082/qmwdev/main/dostavka%20(new).lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/bruhguy7082/qmwdev/main/dostavka%20(old).lua"))()
end

local settings = {
    advertisement = true,
    multi_account = false
}

if settings.advertisement then
    chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
    chatrem:FireServer("le le le дискорд gg / wERDPQUt5H", "All")
    chatrem:FireServer("le le le gitхаб точка com/qmwdev/", "All")
    chatrem:FireServer("le le le ЛУЧШИЕ СКРИПТЫ/ЕЖЕДНЕВНЫЕ РАЗДАЧИ", "All")
end

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
