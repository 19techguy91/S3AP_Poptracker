-- scripts/logic/worlds/sunrise_spring.lua

-- We don't need to define the constructor here because logic_helper 
-- already loaded it into memory! 

-- 2. The Hub
local sunrise = spyro_3_year_of_the_dragon_location.new("SunriseSpring")
entry_point:connect_two_ways(sunrise, always)

-- 3. The Zones
local sunrise_zones = {
    "Spawn", "WaterStream", "NearSV", "NearSA", "NearCS", 
    "Cave", "Forest", "NearMC", "NearSS", "NearMS", "Balloon"
}

for _, zone_name in ipairs(sunrise_zones) do
    local zone_node = spyro_3_year_of_the_dragon_location.new("SunriseSpring" .. zone_name)
    sunrise:connect_two_ways(zone_node, always)
end