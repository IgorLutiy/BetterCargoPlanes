if settings.startup["non-combat-mode"].value == false then
	
	--Updates equipment grids to support bob's 'civilian' vehicle equipment
	if data.raw["equipment-category"]["armoured-vehicle"] then 
		table.insert(data.raw["equipment-grid"]["Cargo-Plane-Equipment-Grid"].equipment_categories,"vehicle")
		table.insert(data.raw["equipment-grid"]["Better-Cargo-Plane-Equipment-Grid"].equipment_categories,"vehicle")
		table.insert(data.raw["equipment-grid"]["Even-Better-Cargo-Plane-Equipment-Grid"].equipment_categories,"vehicle")

		--Updates equipment grids to support bob's 'military' vehicle equipment if setting is active.
		if settings.startup["betterCargoPlanes-MilitaryEquipment"].value == true then
			table.insert(data.raw["equipment-grid"]["Cargo-Plane-Equipment-Grid"].equipment_categories,"armoured-vehicle")
			table.insert(data.raw["equipment-grid"]["Better-Cargo-Plane-Equipment-Grid"].equipment_categories,"armoured-vehicle")
			table.insert(data.raw["equipment-grid"]["Even-Better-Cargo-Plane-Equipment-Grid"].equipment_categories,"armoured-vehicle")
		end
	end
end