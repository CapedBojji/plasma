local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Plasma = require(ReplicatedStorage.Plasma)
local Shared = require(ReplicatedStorage.Shared)
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "Plasma"
screenGui.Parent = PlayerGui

local root = Plasma.new(screenGui)

RunService.Heartbeat:Connect(function()
	Plasma.start(root, function()
		Plasma.window("Hello plasma!", function()
			Plasma.label(Shared.greeting())

			if Plasma.button("Say hello"):clicked() then
				print(Shared.greeting())
			end
		end)
	end)
end)
