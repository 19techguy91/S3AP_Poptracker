
-- this is the file to put all your custom logic functions into.
-- if you dont want to use the json based logic you can switch to a graph-based logic method.
-- the needed functions for that are in `/scripts/logic/graph_logic/logic_main.lua`.



-- function <name> (<parameters if needed>)
--     <actual code>
--     <indentations are just for readability>
-- end
--

function IsMilestoneActive(threshold)
    local master_toggle = Tracker:ProviderCountForCode("setting_enable_total_gem_checks")
    local max_gems = Tracker:ProviderCountForCode("setting_max_total_gem_checks")
    
    -- If Master Toggle is OFF, the milestone is never active
    if master_toggle == 0 then 
        return false 
    end

    -- Otherwise, do your normal math (e.g., check if current gems >= max_gems * threshold)
    local current_gems = Tracker:ProviderCountForCode("gems")
    return current_gems >= (max_gems * (threshold / 100))
end

function HasGemsanity()
    -- Returns true if stage is 1 (Partial) or 2 (Full Bundles)
    return Tracker:ProviderCountForCode("setting_gemsanity") >= 1
end