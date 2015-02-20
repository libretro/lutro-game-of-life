Point = {}
Point.__index = Point

function Point.new(x,y)
	local self = setmetatable({}, Point)
	self.x=x
	self.y=y
	return self
end

function Point:getx()
	return self.x
end

function Point:gety()
	return self.y
end