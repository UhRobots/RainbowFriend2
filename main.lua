--Original By Ginxy--
--skid stop stealing but fine, here is script
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("UhHub") -- Creates the window

local b = w:CreateFolder("Esp") -- Creates the folder(U will put here your buttons,etc)

local z = w:CreateFolder("Item") -- auto 

local p = w:CreateFolder("Miscellaneous") -- misc

local player = game.Players.LocalPlayer


b:Button("Monsters",function()
for index, monster in pairs(workspace.Monsters:GetChildren()) do
	if not monster:FindFirstChild("monster") then
	      local Highlight = Instance.new("Highlight")
    Highlight.Name = "monster"
    Highlight.Parent = monster
       Highlight.FillTransparency = 0.5
	elseif  monster:FindFirstChild("monster") then
	   
   monster:FindFirstChild("monster").OutlineColor = _G.ESPColor
    end
end
print("h")	
end)

b:Button("Players",function()
    loadstring(game:HttpGet(("https://pastebin.com/raw/BED0fMFg")))()
end)


b:Button("Items",function()
         for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 if v:FindFirstChild("TouchTrigger") and not v:FindFirstChild("ILoveYoutubersStealingMyScripts")  then
    local Highlight = Instance.new("Highlight")
    Highlight.Name = "ILoveYoutubersStealingMyScripts"
    Highlight.Parent = v
    Highlight.Enabled = true
            Highlight.FillTransparency = 0.5
 elseif  v:FindFirstChild("ILoveYoutubersStealingMyScripts")  then
            v["ILoveYoutubersStealingMyScripts"].OutlineColor = _G.ESPColor
 else
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 if v:FindFirstChild("TouchTrigger") and  v:FindFirstChild("ILoveYoutubersStealingMyScripts")  then
     v:FindFirstChild("ILoveYoutubersStealingMyScripts"):Destroy()
 end
 end
 end
 end
end)

z:Button("Get All Items",function()
attempts = 0
   for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
 if v:FindFirstChild("TouchTrigger") and attempts < 10 then
     attempts = attempts + 1
       firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.TouchTrigger,0)
 
   end
end
end)

z:Button("Put All Items",function()
game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true)
firetouchinterest(game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true), game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
task.wait()
firetouchinterest(game:GetService("Workspace").GroupBuildStructures:FindFirstChild("Trigger", true), game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
end)

p:Slider("FOV",{
    min = 70; -- min value of the slider
    max = 120; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    game:GetService("Workspace").Camera.FieldOfView = value
end)


p:Button("NoClip",function()
loadstring(game:HttpGet(("https://pastebin.com/raw/1M6wvdpa")))()
end)

p:Button("Infinite Jump",function()
player.Character.Humanoid.JumpPower = 50
player.Character.Humanoid.UseJumpPower = true
wait(1)
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

p:Button("Fullbright",function()
local Light = game:GetService("Lighting")

function dofullbright()
Light.Ambient = Color3.new(1, 1, 1)
Light.ColorShift_Bottom = Color3.new(1, 1, 1)
Light.ColorShift_Top = Color3.new(1, 1, 1)
light.GlobalShadows = false
end

dofullbright()
end)

p:Button("UnFullbright",function()
local Light = game:GetService("Lighting")

function undofullbright()
Light.Ambient = Color3.new(0, 0, 0)
Light.ColorShift_Bottom = Color3.new(0, 0, 0)
Light.ColorShift_Top = Color3.new(0, 0, 0)
light.GlobalShadows = true
end

undofullbright()
end)

p:DestroyGui()

p:Label("Original Made By Ginxy, Revamped By UhRobots ",{
   TextSize = 17; -- Self Explaining
   TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
   BgColor = Color3.fromRGB(30, 30, 30); -- Self Explaining
})