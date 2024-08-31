local function checkcaller()
    local ind = 1
    while {} do
        local info = debug.info(ind, "f")
        if type(info) ~= "function" then
            ind = ind - 1 -- so we can get xpcall and not the @StarterPlayer or @CoreGui shit
            info = debug.getinfo(ind) -- Get the last updated index
            info = type(info) == "table" and info or {} -- JUST INCASE
            if info["source"] == "@[C]" and info["name"] == "xpcall" then -- basically identifier for Solora or any fork of it
                return true
            end
            break;
        end
        ind = ind + 1 -- Add a vector [tryna be smart lolol]
    end
    return false -- call by roblox :(
end

local rawmetatable = getrawmetatable(game)
local old = rawmetatable.__index;
rawmetatable.__index = function(Self, Key)
    if checkcaller() then
        print("Exploit tried indexing -", Self, Key)
    end
    return old(Self, Key)
end