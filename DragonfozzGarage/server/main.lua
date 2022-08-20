local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('checkIfInSquare', function(source, cb, table)
    -- For at denne funktion skal virke skal man sætte punkterne i config clock-wise, man starter med 1 så til 2 til 3 til 4.
    local Player = QBCore.Functions.GetPlayer(source)
    
    local which = 'none'
    local pos = GetEntityCoords(GetPlayerPed(Player.PlayerData.source))
    local spawnpoint
    local spotname
    for k in pairs(Config.Garages) do
        points = Config.Garages[k].Outerpoints

        local TopLine = ((points[2].x - points[1].x)*(pos.y - points[1].y) - (points[2].y - points[1].y)*(pos.x - points[1].x)) > 0;
        local BottomLine = ((points[3].x - points[4].x)*(pos.y - points[4].y) - (points[3].y - points[4].y)*(pos.x - points[4].x)) > 0;

        local LeftLine = ((points[3].x - points[2].x)*(pos.y - points[2].y) - (points[3].y - points[2].y)*(pos.x - points[2].x)) > 0;
        local RightLine = ((points[4].x - points[1].x)*(pos.y - points[1].y) - (points[4].y - points[1].y)*(pos.x - points[1].x)) > 0;

        if LeftLine ~= RightLine and TopLine ~= BottomLine then
            which = tostring(k)
            for k in pairs(Config.Garages[which].Innerpoints) do
                innerpoints = Config.Garages[which].Innerpoints[k].points
        
                local TopLine = ((innerpoints[2].x - innerpoints[1].x)*(pos.y - innerpoints[1].y) - (innerpoints[2].y - innerpoints[1].y)*(pos.x - innerpoints[1].x)) > 0;
                local BottomLine = ((innerpoints[3].x - innerpoints[4].x)*(pos.y - innerpoints[4].y) - (innerpoints[3].y - innerpoints[4].y)*(pos.x - innerpoints[4].x)) > 0;
        
                local LeftLine = ((innerpoints[3].x - innerpoints[2].x)*(pos.y - innerpoints[2].y) - (innerpoints[3].y - innerpoints[2].y)*(pos.x - innerpoints[2].x)) > 0;
                local RightLine = ((innerpoints[4].x - innerpoints[1].x)*(pos.y - innerpoints[1].y) - (innerpoints[4].y - innerpoints[1].y)*(pos.x - innerpoints[1].x)) > 0;
        
                if LeftLine ~= RightLine and TopLine ~= BottomLine then
                    spawnpoint = Config.Garages[which].Innerpoints[k].spawnpoint
                    spotname = Config.Garages[which].Innerpoints[k].name
                end
            end
        end
    end
    cb(which, spawnpoint, spotname)
end)