--!strict
local C0 = {
	["Right Shoulder"] = CFrame.new(1.5,.5,0),
	["Left Shoulder"]  = CFrame.new(-1.5,.5,0),
	["Right Hip"]      = CFrame.new(.5,-1,0),
	["Left Hip"]       = CFrame.new(-.5,-1,0),
	["Neck"]           = CFrame.new(0,1.5,0),
	["RootJoint"]      = CFrame.new(0,0,0)
}
local C1 = {
	["Right Shoulder"] = CFrame.new(0,.5,0),
	["Left Shoulder"]  = CFrame.new(0,.5,0),
	["Right Hip"]      = CFrame.new(0,1,0),
	["Left Hip"]       = CFrame.new(0,1,0),
	["Neck"]           = CFrame.new(0,0,0),
	["RootJoint"]      = CFrame.new(0,0,0)
}

local shortned_names = {
	["ra"] = "Right Shoulder",
	["la"] = "Left Shoulder",
	["rl"] = "Right Hip",
	["ll"] = "Left Hip",
	["hed"] = "Neck",
	["tor"] = "RootJoint"
}

return {C0=C0, C1=C1, names=shortned_names}
