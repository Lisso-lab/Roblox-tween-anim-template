--!strict
local C0 = {
	["Right Shoulder"] = CF.n(1.5,.5,0),
	["Left Shoulder"]  = CF.n(-1.5,.5,0),
	["Right Hip"]      = CF.n(.5,-1,0),
	["Left Hip"]       = CF.n(-.5,-1,0),
	["Neck"]           = CF.n(0,1.5,0),
	["RootJoint"]      = CF.n(0,0,0)
}
local C1 = {
	["Right Shoulder"] = CF.n(0,.5,0),
	["Left Shoulder"]  = CF.n(0,.5,0),
	["Right Hip"]      = CF.n(0,1,0),
	["Left Hip"]       = CF.n(0,1,0),
	["Neck"]           = CF.n(0,0,0),
	["RootJoint"]      = CF.n(0,0,0)
}

local shortned_names = {
	["ra"] = "Right Shoulder",
	["la]" = "Left Shoulder",
	["rl"] = "Right Hip",
	["ll"] = "Left Hip",
	["hed"] = "Neck",
	["tor"] = "RootJoint"
}

return {C0=C0, C1=C1, names=shortned_names}
