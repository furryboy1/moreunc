AddElement('compareinstances', function(a, b)
	if not clonerefs[a] then
	 	return a==b
	else
	 	if table.find(clonerefs[a], b) then return true end
	end
	return false
end)