local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
if Player.leaderstats.Slaps.Value < 1075 then error("player does not have enough slaps for fort") return end

if Player.leaderstats.Glove.Value ~= "Fort" then fireclickdetector(workspace.Lobby.Fort.ClickDetector) end

firetouchinterest(workspace.Lobby.Teleport1,Character.HumanoidRootPart,0)
firetouchinterest(workspace.Lobby.Teleport1,Character.HumanoidRootPart,1)
local Part = Instance.new("Part")
Part.CFrame =  CFrame.new(-280, 250, -17)
Part.Size = Vector3.new(10,0,10)
Part.Anchored = true
Part.Parent = workspace
task.wait(0.5)
Character.HumanoidRootPart.CFrame = Part.CFrame
task.wait(0.5)
game:GetService("ReplicatedStorage"):WaitForChild("Fortlol"):FireServer()
task.wait(0.5)
local RayResult = workspace:Raycast(Character.HumanoidRootPart.Position,Vector3.new(0,0,-50))
if RayResult and RayResult.Instance then
Character.HumanoidRootPart.CFrame = RayResult.Instance.CFrame * CFrame.new(0,10,0)
end
