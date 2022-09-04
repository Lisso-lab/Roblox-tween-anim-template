--!strict
local run_service: RunService = game:GetService("RunService")
local tween_service: TweenService = game:GetService("TweenService")

local a_tmplt_lib = {
    Version = "1.0.0"
}

a_tmplt_lib.find_motors = function(model: Model, compare_to)
    local tabl = {}

    for _,v in pairs(model:GetDescendants()) do
        if not v:IsA("Motor6D") then continue end

        if compare_to[v.Name] then tabl[v.Name] = v end
    end

    return tabl
end

a_tmplt_lib.raycast = function(from: Vector3, dir: Vector3, rc_params: RaycastParams): RaycastResult
    return workspace:Raycast(
        from,dir,
        rc_params
    )
end

a_tmplt_lib.tween = function(inst: Instance, tween_info: TweenInfo, props): Tween
    local tween = tween_service:Create(inst, tween_info, props)

    return tween
end

a_tmplt_lib.swait = function(num: number?)
    
end

a_tmplt_lib.get_lvrv = function(root: BasePart, torso: BasePart, hum: Humanoid)
    local l_vec: number = (root.AssemblyLinearVelocity * torso.CFrame.LookVector).X + (root.AssemblyLinearVelocity*torso.CFrame.LookVector).Z
    local r_vec: number = (root.AssemblyLinearVelocity * torso.CFrame.RightVector).X + (root.AssemblyLinearVelocity*torso.CFrame.RightVector).Z

    if l_vec > hum.WalkSpeed then
    	l_vec = hum.WalkSpeed
    elseif l_vec < -hum.WalkSpeed then
    	l_vec = -hum.WalkSpeed
    end

    if r_vec > hum.WalkSpeed then
    	r_vec = hum.WalkSpeed
    elseif r_vec < -hum.WalkSpeed then
    	r_vec = -hum.WalkSpeed
    end

    l_vec /= hum.WalkSpeed
    r_vec /= hum.WalkSpeed

    return l_vec, r_vec
end

a_tmplt_lib.get_state = function(root: BasePart)
    local root_vel_xz = (root.AssemblyLinearVelocity * Vector3.new(1,0,1)).Magnitude
    local root_vel_y = root.AssemblyLinearVelocity.Y

    local hitfloor = a_tmplt_lib.raycast(
		root.Position,
		(
            (CFrame.new(
                root.Position,
                root.Position - Vector3.new(0,1,0)
            )).LookVector
        ).Unit * 4
	)

    if hitfloor then
        if root_vel_y > 1 then
            return "jump"
        elseif root_vel_y < -1 then
            return "fall"
        end
    else
        if root_vel_xz < 1 then
            return "idle"
        elseif root_vel_xz > 2 then
            return "walking"
        end
    end

    return "idle"
end

return a_tmplt_lib
