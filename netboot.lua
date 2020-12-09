-- cpm netboot by chrissx

local SERVER = "https://chrissxyt.github.io/cpm/"
local SUPPORT = "Twitter @chrissxMedia"

local res = http.get(SERVER.."cpm.lua")
if not res then
        print("Cannot reach the server. ("..SERVER..")")
        print("Please contact us about that: "..SUPPORT)
        return
end
local cpm = res.readAll()
res.close()
local f = fs.open("cpm", "w")
f.write(cpm)
f.close()
