-- applebee
-- Version: 3.0
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local WL = Instance.new("Frame")
local ExitAuth = Instance.new("TextButton")
local MinimizeAuth = Instance.new("TextButton")
local AuthTitle = Instance.new("TextLabel")
local version = Instance.new("TextLabel")
local line = Instance.new("TextLabel")
local Authentication = Instance.new("TextButton")
local Authenticatebutton = Instance.new("TextButton")
local underline = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

WL.Name = "WL"
WL.Parent = ScreenGui
WL.BackgroundColor3 = Color3.new(0.0313726, 0.0313726, 0.0313726)
WL.BackgroundTransparency = 0.20000000298023
WL.Position = UDim2.new(0.368606716, 0, 0.344720483, 0)
WL.Size = UDim2.new(0, 404, 0, 252)

ExitAuth.Name = "ExitAuth"
ExitAuth.Parent = WL
ExitAuth.BackgroundColor3 = Color3.new(1, 1, 1)
ExitAuth.BackgroundTransparency = 1
ExitAuth.Position = UDim2.new(0.910891116, 0, 0, 0)
ExitAuth.Size = UDim2.new(0, 42, 0, 18)
ExitAuth.Font = Enum.Font.GothamBold
ExitAuth.Text = "Exit"
ExitAuth.TextColor3 = Color3.new(1, 1, 1)
ExitAuth.TextSize = 14

MinimizeAuth.Name = "MinimizeAuth"
MinimizeAuth.Parent = WL
MinimizeAuth.BackgroundColor3 = Color3.new(1, 1, 1)
MinimizeAuth.BackgroundTransparency = 1
MinimizeAuth.Position = UDim2.new(0.804455459, 0, 0, 0)
MinimizeAuth.Size = UDim2.new(0, 36, 0, 18)
MinimizeAuth.Font = Enum.Font.GothamBold
MinimizeAuth.Text = "Minimize"
MinimizeAuth.TextColor3 = Color3.new(1, 1, 1)
MinimizeAuth.TextSize = 14

AuthTitle.Name = "AuthTitle"
AuthTitle.Parent = WL
AuthTitle.BackgroundColor3 = Color3.new(1, 1, 1)
AuthTitle.BackgroundTransparency = 1
AuthTitle.Position = UDim2.new(0.252475262, 0, -0.0250783712, 0)
AuthTitle.Size = UDim2.new(0, 200, 0, 50)
AuthTitle.Font = Enum.Font.GothamBold
AuthTitle.Text = "Azimuth"
AuthTitle.TextColor3 = Color3.new(1, 1, 1)
AuthTitle.TextSize = 22
AuthTitle.TextWrapped = true

version.Name = "version"
version.Parent = WL
version.BackgroundColor3 = Color3.new(1, 1, 1)
version.BackgroundTransparency = 1
version.Position = UDim2.new(0.252475232, 0, 0.0317460373, 0)
version.Size = UDim2.new(0, 200, 0, 50)
version.Font = Enum.Font.GothamBold
version.Text = "Version: V.1"
version.TextColor3 = Color3.new(1, 1, 1)
version.TextSize = 11

line.Name = "line"
line.Parent = WL
line.BackgroundColor3 = Color3.new(1, 1, 1)
line.BorderSizePixel = 0
line.Position = UDim2.new(-0.00495049497, 0, 0.224921629, 0)
line.Size = UDim2.new(0, 406, 0, 1)
line.Font = Enum.Font.SourceSans
line.Text = ""
line.TextColor3 = Color3.new(0, 0, 0)
line.TextSize = 14

Authentication.Name = "Enter Global Ware"
Authentication.Parent = WL
Authentication.BackgroundColor3 = Color3.new(1, 1, 1)
Authentication.BackgroundTransparency = 1
Authentication.Position = UDim2.new(-0.118811883, 0, 0.0714285746, 0)
Authentication.Size = UDim2.new(0, 200, 0, 50)
Authentication.Font = Enum.Font.SourceSans
Authentication.Text = "Authentication"
Authentication.TextColor3 = Color3.new(1, 1, 1)
Authentication.TextSize = 19
Authentication.TextWrapped = true

Authenticatebutton.Name = "Authenticatebutton"
Authenticatebutton.Parent = WL
Authenticatebutton.BackgroundColor3 = Color3.new(1, 1, 1)
Authenticatebutton.BackgroundTransparency = 1
Authenticatebutton.Position = UDim2.new(0.25, 0, 0.476190448, 0)
Authenticatebutton.Size = UDim2.new(0, 200, 0, 50)
Authenticatebutton.Font = Enum.Font.SourceSans
Authenticatebutton.Text = "Authenticate"
Authenticatebutton.TextColor3 = Color3.new(1, 1, 1)
Authenticatebutton.TextSize = 25
Authenticatebutton.TextWrapped = true

underline.Name = "underline"
underline.Parent = WL
underline.BackgroundColor3 = Color3.new(1, 0, 0)
underline.BorderSizePixel = 0
underline.Position = UDim2.new(0.36138615, 0, 0.617778718, 0)
underline.Size = UDim2.new(0, 110, 0, 1)
underline.Font = Enum.Font.SourceSans
underline.Text = ""
underline.TextColor3 = Color3.new(0, 0, 0)
underline.TextSize = 14


local p = game.Players.LocalPlayer
local whitelisted = {
	["OriginiaIZephPlays"] = true
}



pcall(Authenticatebutton.MouseButton1Down:Connect(function()
	
	if whitelisted[p.Name] then
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/PainfulGlobal/ImSad/main/Sorry.lua'),true))()
		ScreenGui:Destroy()
	else
		p:Kick((p.Name.." you are not whitelisted ??"))
		end
end))



ExitAuth.MouseButton1Down:Connect(function()
	ScreenGui:Destroy()
end)
