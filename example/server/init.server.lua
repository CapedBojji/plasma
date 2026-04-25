local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Shared = require(ReplicatedStorage.Shared)

print(("Plasma example server ready: %s"):format(Shared.greeting()))
