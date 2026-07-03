-- BK 
local url = "http://127.0.0.1:8765/script"
local headers = {["Authorization"] = "Bearer BK_SECRET_TOKEN_X7"}

local sucesso, resposta = pcall(function()
    -
    if syn and syn.request then
        local r = syn.request({Url = url, Method = "GET", Headers = headers})
        return r.Body
    elseif http_request then
        local r = http_request({Url = url, Method = "GET", Headers = headers})
        return r.Body
    elseif game and game.HttpGet then
        return game:HttpGet(url, true)
    else
        error("Nenhum método HTTP disponível neste executor.")
    end
end)

if sucesso and resposta and resposta ~= "" then
    local f, err = loadstring(resposta)
    if f then
        f()
    else
        warn("[BK LOADER] Erro no script: " .. tostring(err))
    end
else
    warn("[BK LOADER] Falha ao obter script. Verifique se o ADM BK está ativo.")
end
