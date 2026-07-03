-- BK LOADER FANTASMA (conecta ao ADM BK)
local url = "http://127.0.0.1:8765/script"
local sucesso, resposta = pcall(function()
    return game:HttpGet(url, true)
end)

if sucesso and resposta then
    loadstring(resposta)()
else
    warn("[BK LOADER] Servidor ADM BK não está ativo. Ligue o aplicativo e tente novamente.")
end
