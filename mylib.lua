-------------------------------------------------------
-----------FUNCTIONS------------------------------------ Gotta be defined before they're called
--------------------------------------------------------

local function setParserItem()
    if parserItem then
        local transposers = findComponents("ransposer")

        
    end
    return void
end

local function setParserEndItem()
    if parserEndItem then
    
    end
    return void
end

local function findComponents(componentName)     --Makes a table of all the address of components of the name
    local components = {}
    for address, name in c.list(componentName, false) do
        table.insert(components, c.list(address))

    end
    return components
end
-----------------------------------------------------
---------------------------------------------------------------