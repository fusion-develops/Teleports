local Config = {
    {Location = vec3(1,1,1), Destination = vec3(1,1,1)}
}

for i = 1, #Config do

    local data = Config[i]
    local point = lib.points.new({coords = data.Location, distance = 5})    

    function point:nearby() 
        DrawMarker(2, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, false, nil, nil, false)

        if self.currentDistance < 1 and IsControlJustReleased(0, 38) then 
            SetEntityCoords(cache.ped, data.Destination)
        end
    end
end