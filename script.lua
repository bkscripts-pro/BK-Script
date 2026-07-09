-- BK CLIENT V4.0 – 
local a = game:GetService("TweenService")
local b = game:GetService("UserInputService")
local c = game:GetService("RunService")
local d = game:GetService("CoreGui")
local e = game:GetService("Players")
local f = workspace.CurrentCamera
local g = e.LocalPlayer
if d:FindFirstChild("BK_Client_V4") then d.BK_Client_V4:Destroy() end
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
local function j(k) if i[k] then for l, m in pairs(i[k]) do m.Visible = false m:Remove() end; i[k] = nil end end
local function n(k)
    if not i[k] then
        i[k] = {
            Head = Drawing.new("Circle"), Spine = Drawing.new("Line"), L_Arm = Drawing.new("Line"), R_Arm = Drawing.new("Line"),
            L_Leg = Drawing.new("Line"), R_Leg = Drawing.new("Line"), Box = Drawing.new("Square"), Line = Drawing.new("Line"),
            Distance = Drawing.new("Text"), Name = Drawing.new("Text"), HealthBar = Drawing.new("Line"), HealthBarOutline = Drawing.new("Line")
        }
        i[k].Box.Filled = false; i[k].Box.Thickness = 1.5; i[k].Distance.Size = 14; i[k].Distance.Center = true; i[k].Distance.Outline = true
        i[k].Name.Size = 14; i[k].Name.Center = true; i[k].Name.Outline = true; i[k].HealthBar.Thickness = 2
    end
    return i[k]
end
local o = Instance.new("ScreenGui", d); o.Name = "BK_Client_V4"

-- 🔊 Função de clique sonoro
local function playClick()
    local sound = Instance.new("Sound", workspace)
    sound.SoundId = "rbxassetid://68950866"
    sound.Volume = 0.4
    sound.PlaybackSpeed = 1.2
    sound.PlayOnRemove = false
    sound:Play()
    game.Debris:AddItem(sound, 0.5)
end

-- Painel principal
local p = Instance.new("Frame", o); p.BackgroundColor3 = Color3.fromRGB(14, 14, 16); p.Position = UDim2.new(0.3, 0, 0.3, 0); p.Size = UDim2.new(0, 420, 0, 40); p.ClipsDescendants = true
Instance.new("UICorner", p).CornerRadius = UDim.new(0, 6)
local q = Instance.new("UIStroke", p); q.Color = Color3.fromRGB(45, 45, 55); q.Thickness = 1
local r = Instance.new("TextButton", p); r.Size = UDim2.new(1, 0, 0, 40); r.BackgroundColor3 = Color3.fromRGB(18, 18, 22); r.Text = ""; r.AutoButtonColor = false

-- Ícone hacker (skull)
local iconFrame = Instance.new("Frame", r)
iconFrame.Size = UDim2.new(0, 28, 0, 28)
iconFrame.Position = UDim2.new(0, 8, 0.5, -14)
iconFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
Instance.new("UICorner", iconFrame).CornerRadius = UDim.new(0, 6)
local skullHead = Instance.new("Frame", iconFrame)
skullHead.Size = UDim2.new(0, 16, 0, 16)
skullHead.Position = UDim2.new(0.5, -8, 0, 2)
skullHead.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
Instance.new("UICorner", skullHead).CornerRadius = UDim.new(1, 0)
local eyeL = Instance.new("Frame", skullHead)
eyeL.Size = UDim2.new(0, 4, 0, 4)
eyeL.Position = UDim2.new(0.2, -2, 0.3, -2)
eyeL.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
Instance.new("UICorner", eyeL).CornerRadius = UDim.new(0, 1)
local eyeR = Instance.new("Frame", skullHead)
eyeR.Size = UDim2.new(0, 4, 0, 4)
eyeR.Position = UDim2.new(0.8, -2, 0.3, -2)
eyeR.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
Instance.new("UICorner", eyeR).CornerRadius = UDim.new(0, 1)
for _, pos in ipairs({{0.3, 0.7}, {0.5, 0.7}, {0.7, 0.7}}) do
    local tooth = Instance.new("Frame", skullHead)
    tooth.Size = UDim2.new(0, 2, 0, 4)
    tooth.Position = UDim2.new(pos[1], -1, pos[2], -2)
    tooth.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
    Instance.new("UICorner", tooth).CornerRadius = UDim.new(0, 1)
end
local bone1 = Instance.new("Frame", iconFrame)
bone1.Size = UDim2.new(0, 2, 0, 22)
bone1.Position = UDim2.new(0.5, -1, 0, 3)
bone1.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
bone1.Rotation = 45
local bone2 = Instance.new("Frame", iconFrame)
bone2.Size = UDim2.new(0, 2, 0, 22)
bone2.Position = UDim2.new(0.5, -1, 0, 3)
bone2.BackgroundColor3 = Color3.fromRGB(0, 255, 100)
bone2.Rotation = -45

-- Título maior
local u = Instance.new("TextLabel", r)
u.Position = UDim2.new(0, 44, 0, 0); u.Size = UDim2.new(1, -44, 1, 0); u.BackgroundTransparency = 1; u.Text = "BK CLIENT V4"; u.Font = Enum.Font.GothamBold; u.TextColor3 = Color3.fromRGB(200, 200, 210); u.TextSize = 18; u.TextXAlignment = Enum.TextXAlignment.Left

local v = Instance.new("Frame", p); v.Size = UDim2.new(1, 0, 1, -40); v.Position = UDim2.new(0, 0, 0, 40); v.BackgroundTransparency = 1
local w = Instance.new("Frame", v); w.Size = UDim2.new(0, 100, 1, -10); w.Position = UDim2.new(1, -105, 0, 5); w.BackgroundTransparency = 1
local x = Instance.new("UIListLayout", w); x.Padding = UDim.new(0, 5)
local y = Instance.new("Frame", v); y.Size = UDim2.new(1, -115, 1, -10); y.Position = UDim2.new(0, 10, 0, 5); y.BackgroundTransparency = 1
local z = Instance.new("ScrollingFrame", y); z.Size = UDim2.new(1, 0, 1, 0); z.BackgroundTransparency = 1; z.ScrollBarThickness = 2; z.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", z).Padding = UDim.new(0, 8)
local A = Instance.new("ScrollingFrame", y); A.Size = UDim2.new(1, 0, 1, 0); A.BackgroundTransparency = 1; A.Visible = false; A.ScrollBarThickness = 2; A.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", A).Padding = UDim.new(0, 8)
local B = Instance.new("ScrollingFrame", y); B.Size = UDim2.new(1, 0, 1, 0); B.BackgroundTransparency = 1; B.Visible = false; B.ScrollBarThickness = 2; B.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", B).Padding = UDim.new(0, 8)
local OptPage = Instance.new("ScrollingFrame", y); OptPage.Size = UDim2.new(1, 0, 1, 0); OptPage.BackgroundTransparency = 1; OptPage.Visible = false; OptPage.ScrollBarThickness = 2; OptPage.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", OptPage).Padding = UDim.new(0, 8)
local ConfPage = Instance.new("ScrollingFrame", y); ConfPage.Size = UDim2.new(1, 0, 1, 0); ConfPage.BackgroundTransparency = 1; ConfPage.Visible = false; ConfPage.ScrollBarThickness = 2; ConfPage.ScrollBarImageColor3 = Color3.fromRGB(60, 60, 70)
Instance.new("UIListLayout", ConfPage).Padding = UDim.new(0, 8)

-- PlayerPage com Clip
local PlayerPage = Instance.new("Frame", y)
PlayerPage.Size = UDim2.new(1, 0, 1, 0); PlayerPage.BackgroundTransparency = 1; PlayerPage.Visible = false
PlayerPage.ClipsDescendants = true   -- ESSENCIAL para não vazar a bolinha verde

local C = {
    {Name = "VISUAL", Page = z},
    {Name = "MIRA", Page = A},
    {Name = "EXTRAS", Page = B},
    {Name = "OTIMIZA", Page = OptPage},
    {Name = "CONTROLES", Page = ConfPage},
    {Name = "PLAYER", Page = PlayerPage}
}
local D = {}
local function closeAllPopups()
    for _, obj in ipairs(o:GetChildren()) do
        if obj.Name == "PopupFrame" then obj:Destroy() end
    end
end
for E, F in ipairs(C) do
    local G = Instance.new("TextButton", w)
    G.Size = UDim2.new(1, 0, 0, 32); G.BackgroundColor3 = Color3.fromRGB(24, 24, 28); G.Text = F.Name; G.TextColor3 = Color3.fromRGB(140, 140, 150); G.Font = Enum.Font.GothamBold; G.TextSize = 12; G.AutoButtonColor = false
    Instance.new("UICorner", G).CornerRadius = UDim.new(0, 4)
    G.MouseButton1Click:Connect(function()
        playClick()
        z.Visible = false; A.Visible = false; B.Visible = false; OptPage.Visible = false; ConfPage.Visible = false; PlayerPage.Visible = false
        F.Page.Visible = true
        for H, I in pairs(D) do I.TextColor3 = Color3.fromRGB(140, 140, 150); I.BackgroundColor3 = Color3.fromRGB(24, 24, 28) end
        G.TextColor3 = Color3.fromRGB(0, 170, 255); G.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
        closeAllPopups()
    end)
    table.insert(D, G)
end
D[1].TextColor3 = Color3.fromRGB(0, 170, 255); D[1].BackgroundColor3 = Color3.fromRGB(30, 30, 36)

-- Registro visual (inalterado)
local visualSync = {}
local function J(key, K, L, M)
    local N = Instance.new("Frame", L); N.Size = UDim2.new(1, -4, 0, 42); N.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    Instance.new("UICorner", N).CornerRadius = UDim.new(0, 4)
    local O = Instance.new("TextLabel", N); O.Size = UDim2.new(0.65, 0, 1, 0); O.Position = UDim2.new(0, 10, 0, 0); O.Text = K; O.TextColor3 = Color3.fromRGB(230, 230, 240); O.BackgroundTransparency = 1; O.Font = Enum.Font.Gotham; O.TextSize = 13; O.TextXAlignment = Enum.TextXAlignment.Left
    local P = Instance.new("TextButton", N); P.Size = UDim2.new(0, 40, 0, 20); P.Position = UDim2.new(1, -50, 0.5, -10); P.BackgroundColor3 = Color3.fromRGB(40, 40, 45); P.Text = ""; P.AutoButtonColor = false
    Instance.new("UICorner", P).CornerRadius = UDim.new(1, 0)
    local Q = Instance.new("Frame", P); Q.Size = UDim2.new(0, 16, 0, 16); Q.Position = UDim2.new(0, 2, 0.5, -8); Q.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    Instance.new("UICorner", Q).CornerRadius = UDim.new(1, 0)
    local R = false
    local function updateVisual(state)
        R = state
        Q.Position = state and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)
        P.BackgroundColor3 = state and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(40, 40, 45)
    end
    P.MouseButton1Click:Connect(function()
        playClick()
        R = not R
        a:Create(Q, TweenInfo.new(0.2), {Position = R and UDim2.new(1, -18, 0.5, -8) or UDim2.new(0, 2, 0.5, -8)}):Play()
        a:Create(P, TweenInfo.new(0.2), {BackgroundColor3 = R and Color3.fromRGB(0, 180, 255) or Color3.fromRGB(40, 40, 45)}):Play()
        M(R)
    end)
    if key and _G[key] ~= nil then visualSync[key] = updateVisual end
end
local function S(key, K, L, M, O, P, Q)
    local R = Instance.new("Frame", L); R.Size = UDim2.new(1, -4, 0, 52); R.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
    Instance.new("UICorner", R).CornerRadius = UDim.new(0, 4)
    local T = Q or O
    local U = Instance.new("TextLabel", R); U.Text = K .. ": " .. T; U.Size = UDim2.new(1, -20, 0, 18); U.Position = UDim2.new(0, 10, 0, 5); U.TextColor3 = Color3.fromRGB(230, 230, 240); U.BackgroundTransparency = 1; U.Font = Enum.Font.Gotham; U.TextSize = 12; U.TextXAlignment = Enum.TextXAlignment.Left
    local V = Instance.new("TextButton", R); V.Size = UDim2.new(1, -20, 0, 6); V.Position = UDim2.new(0, 10, 0, 35); V.BackgroundColor3 = Color3.fromRGB(45, 45, 50); V.Text = ""; V.AutoButtonColor = false
    Instance.new("UICorner", V).CornerRadius = UDim.new(0, 3)
    local W = Instance.new("Frame", V); local X = (T - M) / (O - M); W.Size = UDim2.new(X, 0, 1, 0); W.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
    Instance.new("UICorner", W).CornerRadius = UDim.new(0, 3)
    local Y = false
    local function Z()
        local a0 = math.clamp((b:GetMouseLocation().X - V.AbsolutePosition.X) / V.AbsoluteSize.X, 0, 1)
        W.Size = UDim2.new(a0, 0, 1, 0); local a1 = math.floor(M + (O - M) * a0); U.Text = K .. ": " .. a1; P(a1)
    end
    local function setSliderValue(val)
        local r = (val - M) / (O - M); W.Size = UDim2.new(r, 0, 1, 0); U.Text = K .. ": " .. math.floor(val)
    end
    V.InputBegan:Connect(function(a2) if a2.UserInputType == Enum.UserInputType.Touch or a2.UserInputType == Enum.UserInputType.MouseButton1 then playClick(); Y = true Z() end end)
    b.InputChanged:Connect(function(a3) if Y then Z() end end)
    b.InputEnded:Connect(function() Y = false end)
    if key and _G[key] ~= nil then
        if key == "Smoothness" then visualSync[key] = function(v) setSliderValue(v * 100) end
        else visualSync[key] = setSliderValue end
    end
end

-- Conteúdo das abas (inalterado)
J("ESP_Skeleton", "ESP Esqueleto", z, function(v) _G.ESP_Skeleton = v end)
J("ESP_Box", "ESP Box", z, function(v) _G.ESP_Box = v end)
J("ESP_Name", "ESP Nome", z, function(v) _G.ESP_Name = v end)
J("ESP_Distance", "ESP Distância", z, function(v) _G.ESP_Distance = v end)
J("ESP_Health", "ESP Vida", z, function(v) _G.ESP_Health = v end)
J("ESP_Line", "ESP Linhas", z, function(v) _G.ESP_Line = v end)
J("ESP_Chams", "ESP Chams", z, function(v) _G.ESP_Chams = v end)
J("ESP_All", "ESP Todos", z, function(v) _G.ESP_All = v end)
J("Aimbot", "Aimbot Master", A, function(v) _G.Aimbot = v end)
J("WallCheck", "Check Wall", A, function(v) _G.WallCheck = v end)
J("FOV_Visible", "Exibir FOV", A, function(v) _G.FOV_Visible = v end)
J("AimTargetAll", "Grudar em Todos", A, function(v) _G.AimTargetAll = v end)
S("AimOffset_X", "Ajuste X (Mira)", A, -50, 50, function(v) _G.AimOffset_X = v end, 0)
S("FOV_Size", "Tamanho FOV", A, 30, 600, function(v) _G.FOV_Size = v end, 100)
S("Smoothness", "Suavidade", A, 1, 100, function(v) _G.Smoothness = v / 100 end, 20)
J("Noclip", "Noclip Real", B, function(v)
    _G.Noclip = v
    if v then enableNoclip() else disableNoclip() end
end)
J("SuperJump", "Super Pulo", B, function(v)
    _G.SuperJump = v
    if g.Character then local hum = g.Character:FindFirstChild("Humanoid") if hum then hum.JumpPower = v and _G.JumpPower or 50 end end
end)
S("JumpPower", "Força do Pulo", B, 50, 300, function(v)
    _G.JumpPower = v
    if _G.SuperJump and g.Character then local hum = g.Character:FindFirstChild("Humanoid") if hum then hum.JumpPower = v end end
end, 200)
J("SuperSpeed", "Super Velocidade", B, function(v)
    _G.SuperSpeed = v
    if g.Character then local hum = g.Character:FindFirstChild("Humanoid") if hum then hum.WalkSpeed = v and _G.SpeedValue or 16 end end
end)
S("SpeedValue", "Velocidade", B, 16, 100, function(v)
    _G.SpeedValue = v
    if _G.SuperSpeed and g.Character then local hum = g.Character:FindFirstChild("Humanoid") if hum then hum.WalkSpeed = v end end
end, 50)
J("RemoveGrass", "Remover Grama", OptPage, function(v) workspace.Terrain.Decoration = not v end)
J("RemoveShadows", "Remover Sombras", OptPage, function(v) game.Lighting.GlobalShadows = not v end)

-- Sistema de Controles
local configKeys = {
    "ESP_Skeleton","ESP_Box","ESP_Line","ESP_Distance","ESP_Name","ESP_Health","ESP_Chams","ESP_All",
    "Aimbot","WallCheck","FOV_Visible","AimTargetAll","Noclip","SuperJump","SuperSpeed",
    "FOV_Size","AimOffset_X","Smoothness","JumpPower","SpeedValue"
}
local function exportConfig()
    local t = {}
    for _,key in ipairs(configKeys) do
        local val = _G[key]
        if key == "Smoothness" then val = math.floor(val * 100 + 0.5) end
        t[key] = val
    end
    local json = "{"
    for i,key in ipairs(configKeys) do
        local val = t[key]
        if type(val) == "boolean" then json = json .. key .. "=" .. tostring(val)
        else json = json .. key .. "=" .. val end
        if i < #configKeys then json = json .. ";" end
    end
    json = json .. "}"
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local function toBase64(str)
        local result = ""; local i = 1
        while i <= #str do
            local a = string.byte(str, i); local b = string.byte(str, i+1) or 0; local c = string.byte(str, i+2) or 0
            local n = a * 65536 + b * 256 + c
            result = result .. b64chars:sub(math.floor(n/262144)%64+1, math.floor(n/262144)%64+1)
            result = result .. b64chars:sub(math.floor(n/4096)%64+1, math.floor(n/4096)%64+1)
            if i+1 <= #str then result = result .. b64chars:sub(math.floor(n/64)%64+1, math.floor(n/64)%64+1) else result = result .. "=" end
            if i+2 <= #str then result = result .. b64chars:sub(n%64+1, n%64+1) else result = result .. "=" end
            i = i + 3
        end
        return result
    end
    return toBase64(json)
end
local function importConfig(b64string)
    local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    local function fromBase64(str)
        local result = ""; local i = 1
        while i <= #str do
            local a = b64chars:find(str:sub(i,i), 1, true) - 1; local b = b64chars:find(str:sub(i+1,i+1), 1, true) - 1
            local c, d
            if str:sub(i+2,i+2) == "=" then c = -1; d = -1
            else
                c = b64chars:find(str:sub(i+2,i+2), 1, true) - 1
                if str:sub(i+3,i+3) == "=" then d = -1 else d = b64chars:find(str:sub(i+3,i+3), 1, true) - 1 end
            end
            local n = a * 262144 + b * 4096
            if c ~= -1 then n = n + c * 64 end
            if d ~= -1 then n = n + d end
            result = result .. string.char(math.floor(n/65536))
            if c ~= -1 then result = result .. string.char(math.floor(n/256)%256) if d ~= -1 then result = result .. string.char(n%256) end end
            i = i + 4
        end
        return result
    end
    local json = fromBase64(b64string)
    local t = {}
    for key,val in string.gmatch(json, "([%w_]+)=([^;]+)") do
        if val == "true" then t[key] = true elseif val == "false" then t[key] = false else t[key] = tonumber(val) end
    end
    for key,val in pairs(t) do
        if _G[key] ~= nil then
            _G[key] = val
            if visualSync[key] then
                if key == "Smoothness" then visualSync[key](val * 100) else visualSync[key](val) end
            end
        end
    end
    if t.Smoothness then _G.Smoothness = t.Smoothness / 100 end
end

local confCard = Instance.new("Frame", ConfPage); confCard.Size = UDim2.new(1, -4, 0, 180); confCard.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
Instance.new("UICorner", confCard).CornerRadius = UDim.new(0, 4)
local confTitle = Instance.new("TextLabel", confCard); confTitle.Size = UDim2.new(1, -20, 0, 20); confTitle.Position = UDim2.new(0, 10, 0, 10); confTitle.BackgroundTransparency = 1; confTitle.Text = "CONTROLES"; confTitle.TextColor3 = Color3.fromRGB(0, 180, 255); confTitle.Font = Enum.Font.GothamBold; confTitle.TextSize = 14; confTitle.TextXAlignment = Enum.TextXAlignment.Left
local descLabel = Instance.new("TextLabel", confCard); descLabel.Size = UDim2.new(1, -20, 0, 14); descLabel.Position = UDim2.new(0, 10, 0, 35); descLabel.BackgroundTransparency = 1; descLabel.Text = "Cole uma config abaixo e pressione Importar, ou exporte a sua."; descLabel.TextColor3 = Color3.fromRGB(180, 180, 190); descLabel.Font = Enum.Font.Gotham; descLabel.TextSize = 10; descLabel.TextXAlignment = Enum.TextXAlignment.Left
local inputField = Instance.new("TextBox", confCard); inputField.Size = UDim2.new(1, -20, 0, 30); inputField.Position = UDim2.new(0, 10, 0, 55); inputField.BackgroundColor3 = Color3.fromRGB(30, 30, 34); inputField.TextColor3 = Color3.fromRGB(255,255,255); inputField.PlaceholderText = "Colar string de config aqui..."; inputField.PlaceholderColor3 = Color3.fromRGB(100,100,100); inputField.Font = Enum.Font.Gotham; inputField.TextSize = 11; inputField.ClearTextOnFocus = false
Instance.new("UICorner", inputField).CornerRadius = UDim.new(0, 4)
local btnImport = Instance.new("TextButton", confCard); btnImport.Size = UDim2.new(0, 90, 0, 26); btnImport.Position = UDim2.new(0, 10, 0, 95); btnImport.BackgroundColor3 = Color3.fromRGB(0, 140, 200); btnImport.Text = "IMPORTAR"; btnImport.TextColor3 = Color3.fromRGB(255,255,255); btnImport.Font = Enum.Font.GothamBold; btnImport.TextSize = 10; btnImport.AutoButtonColor = false
Instance.new("UICorner", btnImport).CornerRadius = UDim.new(0, 4)
local btnExport = Instance.new("TextButton", confCard); btnExport.Size = UDim2.new(0, 90, 0, 26); btnExport.Position = UDim2.new(0, 110, 0, 95); btnExport.BackgroundColor3 = Color3.fromRGB(40, 40, 45); btnExport.Text = "EXPORTAR"; btnExport.TextColor3 = Color3.fromRGB(255,255,255); btnExport.Font = Enum.Font.GothamBold; btnExport.TextSize = 10; btnExport.AutoButtonColor = false
Instance.new("UICorner", btnExport).CornerRadius = UDim.new(0, 4)
local statusLabel = Instance.new("TextLabel", confCard); statusLabel.Size = UDim2.new(1, -20, 0, 14); statusLabel.Position = UDim2.new(0, 10, 0, 130); statusLabel.BackgroundTransparency = 1; statusLabel.Text = ""; statusLabel.TextColor3 = Color3.fromRGB(0, 255, 100); statusLabel.Font = Enum.Font.Gotham; statusLabel.TextSize = 10; statusLabel.TextXAlignment = Enum.TextXAlignment.Left
btnExport.MouseButton1Click:Connect(function()
    playClick()
    local str = exportConfig()
    inputField.Text = str
    if setclipboard then setclipboard(str) statusLabel.Text = "Config copiada!" else statusLabel.Text = "Copie manualmente do campo acima." end
    task.delay(3, function() statusLabel.Text = "" end)
end)
btnImport.MouseButton1Click:Connect(function()
    playClick()
    local txt = inputField.Text
    if txt and txt ~= "" then
        local ok, err = pcall(importConfig, txt)
        if ok then statusLabel.Text = "Config importada e sincronizada!" else statusLabel.Text = "Erro: string inválida" end
    else statusLabel.Text = "Cole uma string primeiro." end
    task.delay(3, function() statusLabel.Text = "" end)
end)

-- Aba PLAYER (com clip e indicador corrigido)
local searchBar = Instance.new("TextBox", PlayerPage)
searchBar.Size = UDim2.new(1, -10, 0, 32)
searchBar.Position = UDim2.new(0, 5, 0, 2)
searchBar.BackgroundColor3 = Color3.fromRGB(28, 28, 34)
searchBar.TextColor3 = Color3.fromRGB(255,255,255)
searchBar.PlaceholderText = ""
searchBar.Font = Enum.Font.Gotham
searchBar.TextSize = 12
searchBar.ClearTextOnFocus = false
Instance.new("UICorner", searchBar).CornerRadius = UDim.new(0, 4)
local searchHint = Instance.new("TextLabel", searchBar)
searchHint.Size = UDim2.new(1, -10, 1, 0)
searchHint.Position = UDim2.new(0, 5, 0, 0)
searchHint.BackgroundTransparency = 1
searchHint.Text = "Pesquisar jogador..."
searchHint.TextColor3 = Color3.fromRGB(140, 140, 150)
searchHint.Font = Enum.Font.Gotham
searchHint.TextSize = 12
searchHint.TextXAlignment = Enum.TextXAlignment.Left
searchHint.Visible = true
searchBar:GetPropertyChangedSignal("Text"):Connect(function()
    searchHint.Visible = searchBar.Text == ""
end)

local listFrame = Instance.new("ScrollingFrame", PlayerPage)
listFrame.Size = UDim2.new(1, -10, 1, -72)
listFrame.Position = UDim2.new(0, 5, 0, 38)
listFrame.BackgroundTransparency = 1
listFrame.ScrollBarThickness = 2
listFrame.ScrollBarImageColor3 = Color3.fromRGB(60,60,70)
listFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
local listLayout = Instance.new("UIListLayout", listFrame)
listLayout.Padding = UDim.new(0, 4)

local onlineIndicator = Instance.new("Frame", PlayerPage)
onlineIndicator.Size = UDim2.new(1, -10, 0, 22)
onlineIndicator.Position = UDim2.new(0, 5, 1, -26)
onlineIndicator.BackgroundTransparency = 1
local greenDot = Instance.new("Frame", onlineIndicator)
greenDot.Size = UDim2.new(0, 12, 0, 12)
greenDot.Position = UDim2.new(0, 0, 0.5, -6)
greenDot.BackgroundColor3 = Color3.fromRGB(0, 255, 102)
greenDot.BorderSizePixel = 0
Instance.new("UICorner", greenDot).CornerRadius = UDim.new(1, 0)
local onlineCountLabel = Instance.new("TextLabel", onlineIndicator)
onlineCountLabel.Size = UDim2.new(1, -20, 1, 0)
onlineCountLabel.Position = UDim2.new(0, 18, 0, 0)
onlineCountLabel.BackgroundTransparency = 1
onlineCountLabel.Text = "Jogadores: 0"
onlineCountLabel.TextColor3 = Color3.fromRGB(200,200,200)
onlineCountLabel.Font = Enum.Font.GothamBold
onlineCountLabel.TextSize = 12
onlineCountLabel.TextXAlignment = Enum.TextXAlignment.Left

local function showPlayerPopup(player, gearBtn)
    closeAllPopups()
    local popup = Instance.new("Frame", o)
    popup.Name = "PopupFrame"
    popup.Size = UDim2.new(0, 180, 0, 110)
    popup.Position = UDim2.new(0, gearBtn.AbsolutePosition.X - 180, 0, gearBtn.AbsolutePosition.Y + 20)
    popup.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
    popup.BorderSizePixel = 0
    popup.ZIndex = 10
    Instance.new("UICorner", popup).CornerRadius = UDim.new(0, 6)
    local popStroke = Instance.new("UIStroke", popup); popStroke.Color = Color3.fromRGB(0, 180, 255); popStroke.Thickness = 1
    local closeBtn = Instance.new("TextButton", popup)
    closeBtn.Size = UDim2.new(0, 18, 0, 18)
    closeBtn.Position = UDim2.new(1, -22, 0, 4)
    closeBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 12
    closeBtn.AutoButtonColor = false
    closeBtn.ZIndex = 11
    Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(1, 0)
    closeBtn.MouseButton1Click:Connect(function() playClick() popup:Destroy() end)
    local function addButton(text, y, callback)
        local btn = Instance.new("TextButton", popup)
        btn.Size = UDim2.new(1, -16, 0, 24)
        btn.Position = UDim2.new(0, 8, 0, y)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
        btn.Text = text
        btn.TextColor3 = Color3.fromRGB(220,220,220)
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 11
        btn.AutoButtonColor = false
        btn.ZIndex = 10
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 3)
        btn.MouseButton1Click:Connect(function() playClick() callback() popup:Destroy() end)
    end
    addButton("Teleportar para player", 30, function()
        local char = g.Character
        local target = player.Character
        if char and target and target:FindFirstChild("HumanoidRootPart") then
            char:SetPrimaryPartCFrame(target.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0))
        end
    end)
    addButton("Teleportar e matar", 58, function()
        local char = g.Character
        local target = player.Character
        if char and target and target:FindFirstChild("HumanoidRootPart") then
            char:SetPrimaryPartCFrame(target.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0))
            task.wait(0.2)
            if target:FindFirstChild("Humanoid") then target.Humanoid.Health = 0 end
        end
    end)
    addButton("Informações", 86, function()
        local hum = player.Character and player.Character:FindFirstChild("Humanoid")
        local health = hum and hum.Health or 0
        local dist = g.Character and g.Character:FindFirstChild("HumanoidRootPart") and player.Character and player.Character:FindFirstChild("HumanoidRootPart")
            and (g.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        print(string.format("Jogador: %s | Vida: %d | Distância: %.1f m", player.Name, health, dist or 0))
    end)
    local dragStartPos, startPos
    popup.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragStartPos = input.Position
            startPos = popup.Position
            input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragStartPos = nil end end)
        end
    end)
    popup.InputChanged:Connect(function(input)
        if dragStartPos and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStartPos
            popup.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

local function updatePlayerList()
    for _, child in ipairs(listFrame:GetChildren()) do
        if child:IsA("Frame") then child:Destroy() end
    end
    local searchText = searchBar.Text:lower()
    local playerCount = 0
    for _, player in ipairs(e:GetPlayers()) do
        if player == g then continue end
        if searchText ~= "" and not player.Name:lower():find(searchText, 1, true) then continue end
        playerCount = playerCount + 1

        local entry = Instance.new("Frame", listFrame)
        entry.Size = UDim2.new(1, 0, 0, 48)
        entry.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
        Instance.new("UICorner", entry).CornerRadius = UDim.new(0, 4)

        local avatar = Instance.new("ImageLabel", entry)
        avatar.Size = UDim2.new(0, 32, 0, 32)
        avatar.Position = UDim2.new(0, 8, 0.5, -16)
        avatar.BackgroundColor3 = Color3.fromRGB(10,10,10)
        Instance.new("UICorner", avatar).CornerRadius = UDim.new(1,0)
        pcall(function()
            avatar.Image = game:HttpGet("https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=48&height=48&format=png", true)
        end)

        local nameLabel = Instance.new("TextLabel", entry)
        nameLabel.Size = UDim2.new(1, -90, 1, 0)
        nameLabel.Position = UDim2.new(0, 50, 0, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = player.DisplayName .. " (@" .. player.Name .. ")"
        nameLabel.TextColor3 = Color3.fromRGB(230,230,240)
        nameLabel.Font = Enum.Font.GothamSemibold
        nameLabel.TextSize = 12
        nameLabel.TextXAlignment = Enum.TextXAlignment.Left
        nameLabel.ClipsDescendants = true

        local gearBtn = Instance.new("TextButton", entry)
        gearBtn.Size = UDim2.new(0, 24, 0, 24)
        gearBtn.Position = UDim2.new(1, -34, 0.5, -12)
        gearBtn.BackgroundColor3 = Color3.fromRGB(30,30,34)
        gearBtn.Text = "⚙"
        gearBtn.TextColor3 = Color3.fromRGB(200,200,200)
        gearBtn.Font = Enum.Font.GothamBold
        gearBtn.TextSize = 14
        gearBtn.AutoButtonColor = false
        Instance.new("UICorner", gearBtn).CornerRadius = UDim.new(0, 4)
        gearBtn.MouseButton1Click:Connect(function()
            playClick()
            showPlayerPopup(player, gearBtn)
        end)
    end
    onlineCountLabel.Text = "Jogadores: " .. playerCount
    listFrame.CanvasSize = UDim2.new(0, 0, 0, playerCount * (48 + 4))
end

searchBar:GetPropertyChangedSignal("Text"):Connect(updatePlayerList)
e.PlayerAdded:Connect(function() task.wait(0.1) updatePlayerList() end)
e.PlayerRemoving:Connect(function() task.wait(0.1) updatePlayerList() end)
task.spawn(function() task.wait(0.5) updatePlayerList() end)

-- Movimentação corrigida
local noclipBodyVelocity
function enableNoclip()
    local char = g.Character
    if char and char:FindFirstChild("HumanoidRootPart") and not char.HumanoidRootPart:FindFirstChild("NoclipBV") then
        noclipBodyVelocity = Instance.new("BodyVelocity")
        noclipBodyVelocity.Name = "NoclipBV"
        noclipBodyVelocity.MaxForce = Vector3.new(10000, 0, 10000)
        noclipBodyVelocity.Velocity = Vector3.zero
        noclipBodyVelocity.Parent = char.HumanoidRootPart
    end
end
function disableNoclip()
    if noclipBodyVelocity then noclipBodyVelocity:Destroy(); noclipBodyVelocity = nil end
    if g.Character then
        for _, part in ipairs(g.Character:GetDescendants()) do
            if part:IsA("BasePart") then part.CanCollide = true end
        end
    end
end
g.CharacterAdded:Connect(function(char)
    if _G.Noclip then disableNoclip() enableNoclip() end
    if _G.SuperJump then char:WaitForChild("Humanoid").JumpPower = _G.JumpPower end
    if _G.SuperSpeed then char:WaitForChild("Humanoid").WalkSpeed = _G.SpeedValue end
end)
c.Heartbeat:Connect(function()
    if _G.Noclip then
        local char = g.Character
        if char and char:FindFirstChild("Humanoid") and char:FindFirstChild("HumanoidRootPart") then
            local root = char.HumanoidRootPart
            local hum = char.Humanoid
            if noclipBodyVelocity and noclipBodyVelocity.Parent == root then
                if hum.FloorMaterial == Enum.Material.Air then
                    noclipBodyVelocity.Velocity = Vector3.new(hum.MoveDirection.X * hum.WalkSpeed, 0, hum.MoveDirection.Z * hum.WalkSpeed)
                else
                    noclipBodyVelocity.Velocity = hum.MoveDirection * hum.WalkSpeed
                end
            end
            for _, part in ipairs(char:GetDescendants()) do
                if part:IsA("BasePart") then part.CanCollide = false end
            end
        end
    end
end)

-- Chams e loop principal
local playerHighlights = {}
local function setupCham(player)
    if playerHighlights[player] then return end
    local function onCharacter(character)
        local highlight = Instance.new("Highlight")
        highlight.Name = "BKCham"
        highlight.FillColor = Color3.fromRGB(0, 180, 255)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.3
        highlight.OutlineTransparency = 0
        highlight.Parent = character
        playerHighlights[player] = highlight
    end
    if player.Character then onCharacter(player.Character) end
    player.CharacterAdded:Connect(onCharacter)
end
local function removeCham(player)
    if playerHighlights[player] then playerHighlights[player]:Destroy(); playerHighlights[player] = nil end
end
local function updateChams()
    for _, player in ipairs(e:GetPlayers()) do
        if player == g then continue end
        local should = _G.ESP_Chams and (_G.ESP_All or player.Team ~= g.Team)
        if should then setupCham(player) else removeCham(player) end
    end
end
c.RenderStepped:Connect(function()
    local center = Vector2.new(f.ViewportSize.X / 2, f.ViewportSize.Y / 2)
    h.Visible = _G.FOV_Visible; h.Radius = _G.FOV_Size; h.Position = center
    local targetHead = nil; local minMag = _G.FOV_Size
    updateChams()
    for _, p in ipairs(e:GetPlayers()) do
        if p == g then continue end
        local ay = n(p); local az = p.Character
        if az and az:FindFirstChild("Head") and az:FindFirstChild("Humanoid") and az.Humanoid.Health > 0 then
            local aA = az.Head; local aB = az.Humanoid; local aC, aD = f:WorldToViewportPoint(aA.Position)
            if not aD then for _, v in pairs(ay) do v.Visible = false end continue end
            local aG = #f:GetPartsObscuringTarget({aA.Position}, {g.Character, az}) == 0
            local aH = (f.CFrame.Position - aA.Position).Magnitude
            local show = _G.ESP_All or (p.Team ~= g.Team)
            if aD and _G.Aimbot then
                local can = _G.AimTargetAll or (p.Team ~= g.Team)
                if can then
                    local mag = (Vector2.new(aC.X, aC.Y) - center).Magnitude
                    if mag < minMag then
                        if _G.WallCheck and aG then targetHead = aA; minMag = mag
                        elseif not _G.WallCheck then targetHead = aA; minMag = mag end
                    end
                end
            end
            if show then
                local sizeX, sizeY = 2000 / aC.Z, 3000 / aC.Z
                local boxPos = Vector2.new(aC.X - sizeX/2, aC.Y - sizeY/2)
                ay.Box.Visible = _G.ESP_Box; ay.Box.Size = Vector2.new(sizeX, sizeY); ay.Box.Position = boxPos
                ay.Box.Color = aG and Color3.fromRGB(255, 50, 50) or Color3.fromRGB(255, 255, 255)
                ay.Line.Visible = _G.ESP_Line; ay.Line.From = Vector2.new(f.ViewportSize.X/2, f.ViewportSize.Y); ay.Line.To = Vector2.new(aC.X, aC.Y)
                ay.Name.Visible = _G.ESP_Name; ay.Name.Position = Vector2.new(aC.X, boxPos.Y - 15); ay.Name.Text = p.Name
                ay.Distance.Visible = _G.ESP_Distance; ay.Distance.Position = Vector2.new(aC.X, boxPos.Y + sizeY + 5); ay.Distance.Text = math.floor(aH) .. "m"
                if _G.ESP_Health then
                    local hPct = aB.Health / aB.MaxHealth
                    ay.HealthBarOutline.Visible = true; ay.HealthBarOutline.From = Vector2.new(boxPos.X - 5, boxPos.Y + sizeY); ay.HealthBarOutline.To = Vector2.new(boxPos.X - 5, boxPos.Y)
                    ay.HealthBar.Visible = true; ay.HealthBar.From = Vector2.new(boxPos.X - 5, boxPos.Y + sizeY); ay.HealthBar.To = Vector2.new(boxPos.X - 5, boxPos.Y + sizeY - (sizeY * hPct))
                    ay.HealthBar.Color = hPct > 0.6 and Color3.new(0,1,0) or (hPct > 0.3 and Color3.new(1,1,0) or Color3.new(1,0,0))
                else ay.HealthBar.Visible = false; ay.HealthBarOutline.Visible = false end
                if _G.ESP_Skeleton then
                    local function v2(part) local pPart = az:FindFirstChild(part) if not pPart then return nil end local pV, o = f:WorldToViewportPoint(pPart.Position) return o and Vector2.new(pV.X, pV.Y) or nil end
                    local hd, t = v2("Head"), v2("UpperTorso") or v2("Torso")
                    local la, ra = v2("Left Arm") or v2("LeftUpperArm"), v2("Right Arm") or v2("RightUpperArm")
                    local ll, rl = v2("Left Leg") or v2("LeftUpperLeg"), v2("Right Leg") or v2("RightUpperLeg")
                    if hd and t then
                        ay.Head.Visible = true; ay.Head.Position = hd; ay.Head.Radius = math.clamp(100 / aC.Z, 3, 12)
                        ay.Spine.Visible = true; ay.Spine.From = hd; ay.Spine.To = t
                        if la then ay.L_Arm.Visible = true; ay.L_Arm.From = t; ay.L_Arm.To = la end
                        if ra then ay.R_Arm.Visible = true; ay.R_Arm.From = t; ay.R_Arm.To = ra end
                        if ll then ay.L_Leg.Visible = true; ay.L_Leg.From = t; ay.L_Leg.To = ll end
                        if rl then ay.R_Leg.Visible = true; ay.R_Leg.From = t; ay.R_Leg.To = rl end
                    end
                else ay.Head.Visible = false; ay.Spine.Visible = false; ay.L_Arm.Visible = false; ay.R_Arm.Visible = false; ay.L_Leg.Visible = false; ay.R_Leg.Visible = false end
            else for _, v in pairs(ay) do v.Visible = false end end
        else for _, v in pairs(ay) do v.Visible = false end end
    end
    if targetHead then local tPos = targetHead.Position + Vector3.new(_G.AimOffset_X / 10, 0, 0) f.CFrame = f.CFrame:Lerp(CFrame.new(f.CFrame.Position, tPos), _G.Smoothness) end
end)

-- Toggle do painel
local b1 = false; local b2 = UDim2.new(0, 420, 0, 360)
r.MouseButton1Click:Connect(function()
    playClick()
    b1 = not b1
    a:Create(p, TweenInfo.new(0.4), {Size = b1 and b2 or UDim2.new(0, p.Size.X.Offset, 0, 40)}):Play()
    if not b1 then closeAllPopups() end
end)
local b3, b4, b5
r.InputBegan:Connect(function(b6) if b6.UserInputType == Enum.UserInputType.Touch or b6.UserInputType == Enum.UserInputType.MouseButton1 then b3 = true; b4 = b6.Position; b5 = p.Position end end)
b.InputChanged:Connect(function(b7) if b3 then p.Position = UDim2.new(b5.X.Scale, b5.X.Offset + (b7.Position - b4).X, b5.Y.Scale, b5.Y.Offset + (b7.Position - b4).Y) end end)
b.InputEnded:Connect(function() b3 = false end)
e.PlayerRemoving:Connect(function(ax) j(ax); removeCham(ax) end)
