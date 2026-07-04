-- BK CLIENT V3
local a = game:GetService("TweenService")
local b = game:GetService("UserInputService")
local c = game:GetService("RunService")
local d = game:GetService("CoreGui")
local e = game:GetService("Players")
local f = workspace.CurrentCamera
local g = e.LocalPlayer
if d:FindFirstChild("BK_Client_V3") then d.BK_Client_V3:Destroy() end
_G.ESP_Skeleton = false
_G.ESP_Box = false
_G.ESP_Line = false
_G.ESP_Distance = false
_G.ESP_Name = false
_G.ESP_Health = false
_G.ESP_Chams = false
_G.ESP_All = false
_G.Aimbot = false
_G.WallCheck = true
_G.FOV_Visible = false
_G.FOV_Size = 100
_G.AimOffset_X = 0
_G.Smoothness = 0.2
_G.AimTargetAll = false
_G.Noclip = false
_G.SuperJump = false
_G.SuperSpeed = false
_G.JumpPower = 200
_G.SpeedValue = 50
local h = Drawing.new("Circle")
h.Thickness = 1.5
h.Color = Color3.fromRGB(255, 255, 255)
h.Filled = false
h.Visible = false
local i = {}
local function j(k)
    if i[k] then
        for l, m in pairs(i[k]) do
            m.Visible = false
            m:Remove()
        end
        i[k] = nil
    end
end
local function n(k)
    if not i[k] then
        i[k] = {
            Head = Drawing.new("Circle"),
            Spine = Drawing.new("Line"),
            L_Arm = Drawing.new("Line"),
            R_Arm = Drawing.new("Line"),
            L_Leg = Drawing.new("Line"),
            R_Leg = Drawing.new("Line"),
            Box = Drawing.new("Square"),
            Line = Drawing.new("Line"),
            Distance = Drawing.new("Text"),
            Name = Drawing.new("Text"),
            HealthBar = Drawing.new("Line"),
            HealthBarOutline = Drawing.new("Line")
        }
        i[k].Box.Filled = false
        i[k].Box.Thickness = 1.5
        i[k].Distance.Size = 14
        i[k].Distance.Center = true
        i[k].Distance.Outline = true
        i[k].Name.Size = 14
        i[k].Name.Center = true
        i[k].Name.Outline = true
        i[k].HealthBar.Thickness = 2
    end
    return i[k]
end
local o = Instance.new("ScreenGui", d)
o.Name = "BK_Client_V3"
local p = Instance.new("Frame", o)
p.BackgroundColor3 = Color3.fromRGB(14, 14, 16)
p.Position = UDim2.new(0.3, 0, 0.3, 0)
p.Size = UDim2.new(0, 420, 0, 40)
p.ClipsDescendants = true
Instance.new("UICorner", p).CornerRadius = UDim.new(0, 6)
local q = Instance.new("UIStroke", p)
q.Color = Color3.fromRGB(45, 45, 55)
q.Thickness = 1
local r = Instance.new("TextButton", p)
r.Size = UDim2.new(1, 0, 0, 40)
r.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
r.Text = ""
r.AutoButtonColor = false
local s = Instance.new("Frame", r)
s.Size = UDim2.new(0, 28, 0, 28)
s.Position = UDim2.new(0, 8, 0.5, -14)
s.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
Instance.new("UICorner", s).CornerRadius = UDim.new(0, 6)
local t = Instance.new("TextLabel", s)
t.Size = UDim2.new(1, 0, 1, 0)
t.BackgroundTransparency = 1
t.Text = "BK"
t.Font = Enum.Font.GothamBlack
t.TextColor3 = Color3.fromRGB(255, 255, 255)
t.TextSize = 16
local u = Instance.new("TextLabel", r)
u.Position = UDim2.new(0, 44, 0, 0)
u.Size = UDim2.new(1, -44, 1, 0)
u.BackgroundTransparency = 1
u.Text = "BK CLIENT V3.0"
u.Font = Enum.Font.GothamBold
u.TextColor3 = Color3.fromRGB(200, 200, 210)
u.TextSize = 14
u.TextXAlignment = Enum.TextXAlignment.Left
local v = Instance.new("Frame", p)
v.Size = UDim2.new(1, 0, 1, -40)
v.Position = UDim2.new(0, 0, 0, 40)
v.BackgroundTransparency = 1
local w = Instance.new("Frame", v)
w.Size = UDim2.new(0, 100, 1, -10)
w.Position = UDim2.new(1, -105, 0, 5)
w.BackgroundTransparency = 1
local x = Instance.new("UIListLayout", w)
x.Padding = UDim.new(0, 5)
local y = Instance.new("Frame", v)
y.Size = UDim2.new(1, -115, 1, -10)
y.Position = UDim2.new(0, 10, 0, 5)
y.BackgroundTransparency = 1
local z = Instance.new("ScrollingFrame", y)
z.Size = UDim2.new(1, 0, 1, 0)
z.BackgroundTransparency = 1
z.ScrollBarThickness = 2
z.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", z).Padding = UDim.new(0, 8)
local A = Instance.new("ScrollingFrame", y)
A.Size = UDim2.new(1, 0, 1, 0)
A.BackgroundTransparency = 1
A.Visible = false
A.ScrollBarThickness = 2
A.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", A).Padding = UDim.new(0, 8)
local B = Instance.new("ScrollingFrame", y)
B.Size = UDim2.new(1, 0, 1, 0)
B.BackgroundTransparency = 1
B.Visible = false
B.ScrollBarThickness = 2
B.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", B).Padding = UDim.new(0, 8)
local C = {
    {Name = "VISUAL", Page = z},
    {Name = "MIRA", Page = A},
    {Name = "EXTRAS", Page = B}
}
local D = {}
for E, F in ipairs(C) do
    local G = Instance.new("TextButton", w)
    G.Size = UDim2.new(1, 0, 0, 32)
    G.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
    G.Text = F.Name
    G.TextColor3 = Color3.fromRGB(140, 140, 150)
    G.Font = Enum.Font.GothamBold
    G.TextSize = 12
    G.AutoButtonColor = false
    Instance.new("UICorner", G).CornerRadius = UDim.new(0, 4)
    G.MouseButton1Click:Connect(function()
        z.Visible = false
        A.Visible = false
        B.Visible = false
        F.Page.Visible = true
        for H, I in pairs(D) do
            I.TextColor3 = Color3.fromRGB(140, 140, 150)
            I.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
        end
        G.TextColor3 = Color3.fromRGB(0, 170, 255)
        G.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
    end)
    table.insert(D, G)
end
D[1].TextColor3 = Color3.fromRGB(0, 170, 255)
D[1].BackgroundColor3 = Color3.fromRGB(30, 30, 36)
local function J(K, L, M)
    local N = Instance.new("Frame", L)
    N.Size = UDim2.new(1, -4, 0, 42)
    N.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    Instance.new("UICorner", N).CornerRadius = UDim.new(0, 4)
    local O = Instance.new("TextLabel", N)
    O.Size = UDim2.new(0.65, 0, 1, 0)
    O.Position = UDim2.new(0, 10, 0, 0)
    O.Text = K
    O.TextColor3 = Color3.fromRGB(230, 230, 240)
    O.BackgroundTransparency = 1
    O.Font = Enum.Font.Gotham
    O.TextSize = 13
    O.TextXAlignment = Enum.TextXAlignment.Left
    local P = Instance.new("TextButton", N)
    P.Size = UDim2.new(0, 40, 0, 20)
    P.Position = UDim2.new(1, -50, 0.5, -10)
    P.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    P.Text = ""
    P.AutoButtonColor = false
    Instance.new("UICorner", P).CornerRadius = UDim.new(1, 0)
    local Q = Instance.new("Frame", P)
    Q.Size = UDim2.new(0, 16, 0, 16)
    Q.Position = UDim2.new(0, 2, 0.5, -8)
    Q.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    Instance.new("UICorner", Q).CornerRadius = UDim.new(1, 0)
    local R = false
    P.MouseButton1Click:Connect(function()
        R = not R
        a:Create(Q, TweenInfo.new(0.2), {
            Position = R and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
        }):Play()
        a:Create(P, TweenInfo.new(0.2), {
            BackgroundColor3 = R and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(40, 40, 45)
        }):Play()
        M(R)
    end)
end
local function S(K, L, M, O, P, Q)
    local R = Instance.new("Frame", L)
    R.Size = UDim2.new(1, -4, 0, 52)
    R.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    Instance.new("UICorner", R).CornerRadius = UDim.new(0, 4)
    local T = Q or O
    local U = Instance.new("TextLabel", R)
    U.Text = K .. ": " .. T
    U.Size = UDim2.new(1, -20, 0, 18)
    U.Position = UDim2.new(0, 10, 0, 5)
    U.TextColor3 = Color3.fromRGB(230, 230, 240)
    U.BackgroundTransparency = 1
    U.Font = Enum.Font.Gotham
    U.TextSize = 12
    U.TextXAlignment = Enum.TextXAlignment.Left
    local V = Instance.new("TextButton", R)
    V.Size = UDim2.new(1, -20, 0, 6)
    V.Position = UDim2.new(0, 10, 0, 35)
    V.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
    V.Text = ""
    V.AutoButtonColor = false
    Instance.new("UICorner", V).CornerRadius = UDim.new(0, 3)
    local W = Instance.new("Frame", V)
    local X = (T - M) / (O - M)
    W.Size = UDim2.new(X, 0, 1, 0)
    W.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
    Instance.new("UICorner", W).CornerRadius = UDim.new(0, 3)
    local Y = false
    local function Z()
        local a0 = math.clamp((b:GetMouseLocation().X - V.AbsolutePosition.X) / V.AbsoluteSize.X, 0, 1)
        W.Size = UDim2.new(a0, 0, 1, 0)
        local a1 = math.floor(M + (O - M) * a0)
        U.Text = K .. ": " .. a1
        P(a1)
    end
    V.InputBegan:Connect(function(a2)
        if a2.UserInputType == Enum.UserInputType.Touch or a2.UserInputType == Enum.UserInputType.MouseButton1 then
            Y = true
            Z()
        end
    end)
    b.InputChanged:Connect(function(a3)
        if Y then Z() end
    end)
    b.InputEnded:Connect(function()
        Y = false
    end)
end
J("ESP Esqueleto", z, function(v) _G.ESP_Skeleton = v end)
J("ESP Box", z, function(v) _G.ESP_Box = v end)
J("ESP Nome", z, function(v) _G.ESP_Name = v end)
J("ESP Distância", z, function(v) _G.ESP_Distance = v end)
J("ESP Vida", z, function(v) _G.ESP_Health = v end)
J("ESP Linhas", z, function(v) _G.ESP_Line = v end)
J("ESP Chams", z, function(v) _G.ESP_Chams = v end)
J("ESP Todos", z, function(v) _G.ESP_All = v end)
J("Aimbot Master", A, function(v) _G.Aimbot = v end)
J("Check Wall", A, function(v) _G.WallCheck = v end)
J("Exibir FOV", A, function(v) _G.FOV_Visible = v end)
J("Grudar em Todos", A, function(v) _G.AimTargetAll = v end)
S("Ajuste X (Mira)", A, -50, 50, function(v) _G.AimOffset_X = v end, 0)
S("Tamanho FOV", A, 30, 600, function(v) _G.FOV_Size = v end, 100)
S("Suavidade", A, 1, 100, function(v) _G.Smoothness = v / 100 end, 20)
J("Noclip Real", B, function(v)
    _G.Noclip = v
    if v then a4() else a5() end
end)
J("Super Pulo", B, function(v)
    _G.SuperJump = v
    if g.Character then
        local a6 = g.Character:FindFirstChild("Humanoid")
        if a6 then
            a6.JumpPower = v and _G.JumpPower or 50
        end
    end
end)
S("Força do Pulo", B, 50, 300, function(v)
    _G.JumpPower = v
    if _G.SuperJump and g.Character then
        local a6 = g.Character:FindFirstChild("Humanoid")
        if a6 then a6.JumpPower = v end
    end
end, 200)
J("Super Velocidade", B, function(v)
    _G.SuperSpeed = v
    if g.Character then
        local a6 = g.Character:FindFirstChild("Humanoid")
        if a6 then
            a6.WalkSpeed = v and _G.SpeedValue or 16
        end
    end
end)
S("Velocidade", B, 16, 100, function(v)
    _G.SpeedValue = v
    if _G.SuperSpeed and g.Character then
        local a6 = g.Character:FindFirstChild("Humanoid")
        if a6 then a6.WalkSpeed = v end
    end
end, 50)
local a4, a5
do
    local a7
    function a4()
        local a8 = g.Character
        if a8 and a8:FindFirstChild("HumanoidRootPart") then
            if not a8.HumanoidRootPart:FindFirstChild("NoclipBV") then
                a7 = Instance.new("BodyVelocity")
                a7.Name = "NoclipBV"
                a7.MaxForce = Vector3.new(400000, 400000, 400000)
                a7.Velocity = Vector3.zero
                a7.Parent = a8.HumanoidRootPart
            end
        end
    end
    function a5()
        if a7 then
            a7:Destroy()
            a7 = nil
        end
        if g.Character then
            for a9, aa in ipairs(g.Character:GetDescendants()) do
                if aa:IsA("BasePart") then aa.CanCollide = true end
            end
        end
    end
end
g.CharacterAdded:Connect(function(ab)
    if _G.Noclip then
        a5()
        a4()
    end
    if _G.SuperJump then
        local ac = ab:WaitForChild("Humanoid")
        ac.JumpPower = _G.JumpPower
    end
    if _G.SuperSpeed then
        local ac = ab:WaitForChild("Humanoid")
        ac.WalkSpeed = _G.SpeedValue
    end
end)
c.Heartbeat:Connect(function()
    if _G.Noclip then
        local ad = g.Character
        if ad and ad:FindFirstChild("Humanoid") and ad:FindFirstChild("HumanoidRootPart") then
            local ae = ad.HumanoidRootPart
            local af = ad.Humanoid
            if a7 and a7.Parent == ae then
                a7.Velocity = af.MoveDirection * af.WalkSpeed
            end
            for ag, ah in ipairs(ad:GetDescendants()) do
                if ah:IsA("BasePart") then ah.CanCollide = false end
            end
        end
    end
end)
local ai = {}
local function aj(ak)
    if ai[ak] then return end
    local function al(am)
        local an = Instance.new("Highlight")
        an.Name = "BKCham"
        an.FillColor = Color3.fromRGB(0, 180, 255)
        an.OutlineColor = Color3.fromRGB(255, 255, 255)
        an.FillTransparency = 0.3
        an.OutlineTransparency = 0
        an.Parent = am
        ai[ak] = an
    end
    if ak.Character then
        al(ak.Character)
    end
    ak.CharacterAdded:Connect(al)
end
local function ao(ak)
    if ai[ak] then
        ai[ak]:Destroy()
        ai[ak] = nil
    end
end
local function ap()
    for aq, ar in pairs(e:GetPlayers()) do
        if ar == g then continue end
        local as = _G.ESP_Chams and (_G.ESP_All or ar.Team ~= g.Team)
        if as then
            aj(ar)
        else
            ao(ar)
        end
    end
end
c.RenderStepped:Connect(function()
    local at = Vector2.new(f.ViewportSize.X / 2, f.ViewportSize.Y / 2)
    h.Visible = _G.FOV_Visible
    h.Radius = _G.FOV_Size
    h.Position = at
    local au = nil
    local av = _G.FOV_Size
    ap()
    for aw, ax in pairs(e:GetPlayers()) do
        if ax == g then continue end
        local ay = n(ax)
        local az = ax.Character
        if az and az:FindFirstChild("Head") and az:FindFirstChild("Humanoid") and az.Humanoid.Health > 0 then
            local aA = az.Head
            local aB = az.Humanoid
            local aC, aD = f:WorldToViewportPoint(aA.Position)
            if not aD then
                for aE, aF in pairs(ay) do aF.Visible = false end
                continue
            end
            local aG = #f:GetPartsObscuringTarget({aA.Position}, {g.Character, az}) == 0
            local aH = (f.CFrame.Position - aA.Position).Magnitude
            local aI = _G.ESP_All or (ax.Team ~= g.Team)
            if aD and _G.Aimbot then
                local aJ = _G.AimTargetAll or (ax.Team ~= g.Team)
                if aJ then
                    local aK = (Vector2.new(aC.X, aC.Y) - at).Magnitude
                    if aK < av then
                        if _G.WallCheck and aG then
                            au = aA
                            av = aK
                        elseif not _G.WallCheck then
                            au = aA
                            av = aK
                        end
                    end
                end
            end
            if aI then
                local aL, aM = 2000 / aC.Z, 3000 / aC.Z
                local aN = Vector2.new(aC.X - aL/2, aC.Y - aM/2)
                ay.Box.Visible = _G.ESP_Box
                ay.Box.Size = Vector2.new(aL, aM)
                ay.Box.Position = aN
                ay.Box.Color = aG and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(255, 255, 255)
                ay.Line.Visible = _G.ESP_Line
                ay.Line.From = Vector2.new(f.ViewportSize.X/2, f.ViewportSize.Y)
                ay.Line.To = Vector2.new(aC.X, aC.Y)
                ay.Name.Visible = _G.ESP_Name
                ay.Name.Position = Vector2.new(aC.X, aN.Y - 15)
                ay.Name.Text = ax.Name
                ay.Distance.Visible = _G.ESP_Distance
                ay.Distance.Position = Vector2.new(aC.X, aN.Y + aM + 5)
                ay.Distance.Text = math.floor(aH) .. "m"
                if _G.ESP_Health then
                    local aO = aB.Health / aB.MaxHealth
                    ay.HealthBarOutline.Visible = true
                    ay.HealthBarOutline.From = Vector2.new(aN.X - 5, aN.Y + aM)
                    ay.HealthBarOutline.To = Vector2.new(aN.X - 5, aN.Y)
                    ay.HealthBar.Visible = true
                    ay.HealthBar.From = Vector2.new(aN.X - 5, aN.Y + aM)
                    ay.HealthBar.To = Vector2.new(aN.X - 5, aN.Y + aM - (aM * aO))
                    ay.HealthBar.Color = aO > 0.6 and Color3.new(0, 1, 0) or (aO > 0.3 and Color3.new(1, 1, 0) or Color3.new(1, 0, 0))
                else
                    ay.HealthBar.Visible = false
                    ay.HealthBarOutline.Visible = false
                end
                if _G.ESP_Skeleton then
                    local function aP(aQ)
                        local aR = az:FindFirstChild(aQ)
                        if not aR then return nil end
                        local aS, aT = f:WorldToViewportPoint(aR.Position)
                        return aT and Vector2.new(aS.X, aS.Y) or nil
                    end
                    local aU, aV = aP("Head"), aP("UpperTorso") or aP("Torso")
                    local aW, aX = aP("Left Arm") or aP("LeftUpperArm"), aP("Right Arm") or aP("RightUpperArm")
                    local aY, aZ = aP("Left Leg") or aP("LeftUpperLeg"), aP("Right Leg") or aP("RightUpperLeg")
                    if aU and aV then
                        ay.Head.Visible = true
                        ay.Head.Position = aU
                        ay.Head.Radius = math.clamp(100 / aC.Z, 3, 12)
                        ay.Spine.Visible = true
                        ay.Spine.From = aU
                        ay.Spine.To = aV
                        if aW then ay.L_Arm.Visible = true; ay.L_Arm.From = aV; ay.L_Arm.To = aW end
                        if aX then ay.R_Arm.Visible = true; ay.R_Arm.From = aV; ay.R_Arm.To = aX end
                        if aY then ay.L_Leg.Visible = true; ay.L_Leg.From = aV; ay.L_Leg.To = aY end
                        if aZ then ay.R_Leg.Visible = true; ay.R_Leg.From = aV; ay.R_Leg.To = aZ end
                    end
                else
                    ay.Head.Visible = false
                    ay.Spine.Visible = false
                    ay.L_Arm.Visible = false
                    ay.R_Arm.Visible = false
                    ay.L_Leg.Visible = false
                    ay.R_Leg.Visible = false
                end
            else
                for aE, aF in pairs(ay) do aF.Visible = false end
            end
        else
            for aE, aF in pairs(ay) do aF.Visible = false end
        end
    end
    if au then
        local b0 = au.Position + Vector3.new(_G.AimOffset_X / 10, 0, 0)
        f.CFrame = f.CFrame:Lerp(CFrame.new(f.CFrame.Position, b0), _G.Smoothness)
    end
end)
local b1 = false
local b2 = UDim2.new(0, 420, 0, 360)
r.MouseButton1Click:Connect(function()
    b1 = not b1
    a:Create(p, TweenInfo.new(0.4), {
        Size = b1 and b2 or UDim2.new(0, p.Size.X.Offset, 0, 40)
    }):Play()
end)
local b3, b4, b5
r.InputBegan:Connect(function(b6)
    if b6.UserInputType == Enum.UserInputType.Touch or b6.UserInputType == Enum.UserInputType.MouseButton1 then
        b3 = true
        b4 = b6.Position
        b5 = p.Position
    end
end)
b.InputChanged:Connect(function(b7)
    if b3 then
        p.Position = UDim2.new(
            b5.X.Scale,
            b5.X.Offset + (b7.Position - b4).X,
            b5.Y.Scale,
            b5.Y.Offset + (b7.Position - b4).Y
        )
    end
end)
b.InputEnded:Connect(function()
    b3 = false
end)
e.PlayerRemoving:Connect(function(ax)
    j(ax)
    ao(ax)
end)
