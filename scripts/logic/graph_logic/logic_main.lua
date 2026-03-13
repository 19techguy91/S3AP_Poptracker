-- Root: Where the game starts
local entry = Location.new("entry_point")

-- The 4 main Hubs
local sunrise = Location.new("Sunrise Spring")
local midday = Location.new("Midday Gardens")
local evening = Location.new("Evening Lake")
local midnight = Location.new("Midnight Mountain")

-- Connecting the root to the first hub
-- 'always' is a built-in rule in PopTracker, so this will work immediately
entry:AddConnection(sunrise, always)